"""Guarded rotation of the free Render Postgres used by Tabbycat."""

from __future__ import annotations

import argparse
import json
import os
import sys
import time
from datetime import datetime, timezone
from pathlib import Path
from urllib.error import HTTPError, URLError
from urllib.request import Request, urlopen

from render_api import (
    RenderAPIError,
    RenderClient,
    exact_resource,
    field,
    find_connection_string,
    unwrap,
)


DATABASE_NAME = os.environ.get("RENDER_DATABASE_NAME") or "tabbycat_database"
SERVICE_NAME = os.environ.get("RENDER_SERVICE_NAME") or "tabbycat_website"
ROTATE_AFTER_DAYS = int(os.environ.get("RENDER_ROTATE_AFTER_DAYS", "25"))
ROTATION_STATE_KEY = "DEBSOC_ROTATION_STATE"
SAFETY_TOKEN = "SYNC_AND_BACKUP_SUCCEEDED"
POLL_SECONDS = int(os.environ.get("RENDER_POLL_SECONDS", "15"))
PROVISION_TIMEOUT = int(os.environ.get("RENDER_PROVISION_TIMEOUT_SECONDS", "1800"))
DEPLOY_TIMEOUT = int(os.environ.get("RENDER_DEPLOY_TIMEOUT_SECONDS", "1800"))


def parse_timestamp(value):
    if not value:
        return None
    return datetime.fromisoformat(str(value).replace("Z", "+00:00")).astimezone(timezone.utc)


def postgres_plan(database):
    plan = field(database, "plan")
    if isinstance(plan, dict):
        plan = field(plan, "id", "name")
    return str(plan or "").lower()


def postgres_status(database):
    suspended = field(database, "suspended")
    if suspended is True or str(suspended or "").lower() == "suspended":
        return "suspended"
    status = field(database, "status", "state")
    if isinstance(status, dict):
        status = field(status, "name", "status")
    return str(status or "").lower()


def resource_id(resource, label):
    value = field(resource, "id")
    if not value:
        raise RenderAPIError(f"Render returned {label} without an ID.")
    return value


def env_value(payload):
    payload = unwrap(payload, "envVar")
    if isinstance(payload, dict):
        value = field(payload, "value")
        if isinstance(value, str):
            return value
    return None


def get_rotation_state(client, service_id):
    try:
        return env_value(client.retrieve_env_var(service_id, ROTATION_STATE_KEY))
    except RenderAPIError as exc:
        if "HTTP 404" in str(exc):
            return None
        raise


def discover(client, *, database_required):
    service = exact_resource(
        client.list_services(SERVICE_NAME),
        wrapper="service",
        name=SERVICE_NAME,
    )
    service_id = resource_id(service, "service")
    owner_id = field(service, "ownerId", "owner_id")
    if not owner_id:
        raise RenderAPIError("Render service has no workspace owner ID.")

    configured_owner = os.environ.get("RENDER_OWNER_ID") or None
    if configured_owner and configured_owner != owner_id:
        raise RenderAPIError("Safety stop: service owner does not match RENDER_OWNER_ID.")

    database = exact_resource(
        client.list_postgres(DATABASE_NAME),
        wrapper="postgres",
        name=DATABASE_NAME,
        owner_id=owner_id,
        required=database_required,
    )
    if database and postgres_plan(database) != "free":
        raise RenderAPIError(
            f"Safety stop: {DATABASE_NAME!r} is not on the free plan; refusing automated deletion."
        )
    return service, database, owner_id


def current_state(client):
    service, database, owner_id = discover(client, database_required=False)
    service_id = resource_id(service, "service")
    rotation_state = get_rotation_state(client, service_id)
    if database is None:
        return {
            "due": True,
            "database_exists": False,
            "database_status": "missing",
            "source_accessible": False,
            "managed": rotation_state is not None,
            "recovery": True,
            "reason": "database_missing",
            "age_days": -1,
            "service_id": service_id,
            "owner_id": owner_id,
        }

    database_id = resource_id(database, "database")
    database_status = postgres_status(database)
    source_accessible = database_status not in {
        "expired", "failed", "suspended", "unavailable", "deleted",
    }
    created_at = parse_timestamp(field(database, "createdAt", "created_at"))
    if created_at is None:
        raise RenderAPIError("Render database has no creation timestamp.")
    age_days = (datetime.now(timezone.utc) - created_at).total_seconds() / 86400
    expected_state = f"ready:{database_id}"
    managed = rotation_state is not None
    recovery = managed and (rotation_state != expected_state or not source_accessible)
    age_due = age_days >= ROTATE_AFTER_DAYS
    due = managed and (recovery or age_due)
    reason = (
        "database_unavailable"
        if not source_accessible
        else ("recovery_required" if recovery else ("age_threshold" if age_due else "not_due"))
    )
    if not managed:
        reason = "not_adopted"
    return {
        "due": due,
        "database_exists": True,
        "database_id": database_id,
        "database_status": database_status,
        "source_accessible": source_accessible,
        "managed": managed,
        "recovery": recovery,
        "reason": reason,
        "age_days": round(age_days, 2),
        "service_id": service_id,
        "owner_id": owner_id,
    }


def write_github_output(path, state):
    if not path:
        return
    with Path(path).open("a", encoding="utf-8") as output:
        for key in (
            "due", "database_exists", "managed", "recovery", "reason", "age_days",
            "source_accessible",
        ):
            value = state[key]
            if isinstance(value, bool):
                value = str(value).lower()
            output.write(f"{key}={value}\n")


def adopt(client):
    service, database, _ = discover(client, database_required=False)
    service_id = resource_id(service, "service")
    client.update_service(service_id, {"autoDeploy": "no"})
    if database:
        database_id = resource_id(database, "database")
        rotation_state = f"ready:{database_id}"
        client.update_env_var(service_id, "DEBSOC_RENDER_DATABASE_ID", database_id)
    else:
        # A free database can already have expired and disappeared before the
        # controller is installed. Adopting the surviving service in recovery
        # mode lets the guarded rotation create a replacement without deleting
        # anything.
        database_id = None
        rotation_state = "recovery:missing"
    client.update_env_var(service_id, ROTATION_STATE_KEY, rotation_state)
    print(json.dumps({
        "adopted": True,
        "service_id": service_id,
        "database_id": database_id,
        "database_exists": database is not None,
        "auto_deploy": "off",
    }))


def prepare_missing_database_recovery(client):
    if os.environ.get("ROTATION_SAFETY_TOKEN") != SAFETY_TOKEN:
        raise RenderAPIError(
            "Safety stop: an encrypted backup guard is required before recovery preparation."
        )

    blueprint_id = os.environ.get("RENDER_BLUEPRINT_ID")
    legacy_database_id = os.environ.get("RENDER_LEGACY_DATABASE_ID")
    if not blueprint_id or not legacy_database_id:
        raise RenderAPIError(
            "RENDER_BLUEPRINT_ID and RENDER_LEGACY_DATABASE_ID are required."
        )

    service, database, owner_id = discover(client, database_required=False)
    service_id = resource_id(service, "service")
    if database is not None:
        raise RenderAPIError(
            "Safety stop: the configured database is visible; use normal rotation instead."
        )

    rotation_state = get_rotation_state(client, service_id)
    detached_states = {"recovery:detaching", "recovery:detached"}
    blueprint = None
    try:
        blueprint = client.retrieve_blueprint(blueprint_id)
    except RenderAPIError as exc:
        if "HTTP 404" not in str(exc) or rotation_state not in detached_states:
            raise

    if blueprint is not None:
        blueprint_owner = field(blueprint, "ownerId", "owner_id")
        if isinstance(blueprint_owner, dict):
            blueprint_owner = field(blueprint_owner, "id")
        if blueprint_owner and blueprint_owner != owner_id:
            raise RenderAPIError("Safety stop: Blueprint owner does not match the service owner.")
        client.update_env_var(service_id, ROTATION_STATE_KEY, "recovery:detaching")
        client.disconnect_blueprint(blueprint_id)

    legacy_database = None
    try:
        legacy_database = client.retrieve_postgres(legacy_database_id)
    except RenderAPIError as exc:
        if "HTTP 404" not in str(exc):
            raise

    if legacy_database is not None:
        if field(legacy_database, "name") != DATABASE_NAME:
            raise RenderAPIError("Safety stop: legacy database name does not match exactly.")
        legacy_owner = field(legacy_database, "ownerId", "owner_id", "owner")
        if isinstance(legacy_owner, dict):
            legacy_owner = field(legacy_owner, "id", "ownerId", "owner_id")
        if legacy_owner != owner_id:
            raise RenderAPIError("Safety stop: legacy database owner does not match.")
        if postgres_plan(legacy_database) != "free":
            raise RenderAPIError("Safety stop: legacy database is not on the free plan.")
        if postgres_status(legacy_database) not in {
            "expired", "failed", "suspended", "unavailable", "deleted"
        }:
            raise RenderAPIError("Safety stop: legacy database is not expired or suspended.")
        client.delete_postgres(legacy_database_id)

    client.update_service(service_id, {"autoDeploy": "no"})
    client.update_env_var(service_id, ROTATION_STATE_KEY, "recovery:detached")
    print(json.dumps({
        "prepared": True,
        "blueprint_id": blueprint_id,
        "legacy_database_id": legacy_database_id,
        "legacy_database_deleted": legacy_database is not None,
        "service_id": service_id,
        "auto_deploy": "off",
    }))


def create_payload(previous, owner_id):
    database_name = field(previous or {}, "databaseName", "database_name", default="tabbycat")
    database_user = field(previous or {}, "databaseUser", "database_user", default="tabbycat")
    region = field(previous or {}, "region", default=os.environ.get("RENDER_REGION") or "oregon")
    version = field(previous or {}, "version", default=os.environ.get("RENDER_POSTGRES_VERSION") or "17")
    if isinstance(version, dict):
        version = field(version, "major", "version", "name", default="17")
    version = str(version).split(".")[0]
    return {
        "name": DATABASE_NAME,
        "databaseName": database_name,
        "databaseUser": database_user,
        "ownerId": owner_id,
        "plan": "free",
        "region": region,
        "version": version,
        "connectionPool": "none",
        "ipAllowList": [{
            "cidrBlock": "0.0.0.0/0",
            "description": "GitHub Actions sync",
        }],
    }


def wait_for_database(client, database_id):
    deadline = time.monotonic() + PROVISION_TIMEOUT
    last_status = "unknown"
    while time.monotonic() < deadline:
        database = client.retrieve_postgres(database_id)
        last_status = postgres_status(database)
        if last_status in {"available", "running", "ready"}:
            return database
        if last_status in {"failed", "suspended", "deleted"}:
            raise RenderAPIError(f"New Render database entered terminal status {last_status!r}.")
        time.sleep(POLL_SECONDS)
    raise RenderAPIError(f"Timed out waiting for Render database; last status was {last_status!r}.")


def wait_for_deploy(client, service_id, deploy_id):
    deadline = time.monotonic() + DEPLOY_TIMEOUT
    last_status = "unknown"
    while time.monotonic() < deadline:
        deploy = client.retrieve_deploy(service_id, deploy_id)
        last_status = str(field(deploy, "status", default="unknown")).lower()
        if last_status == "live":
            return deploy
        if last_status in {
            "build_failed", "update_failed", "canceled", "cancelled", "deactivated", "failed"
        }:
            raise RenderAPIError(f"Render deploy entered terminal status {last_status!r}.")
        time.sleep(POLL_SECONDS)
    raise RenderAPIError(f"Timed out waiting for Render deploy; last status was {last_status!r}.")


def wait_for_health(url):
    if not url:
        return
    health_url = url.rstrip("/") + "/?redirect=false"
    deadline = time.monotonic() + 300
    while time.monotonic() < deadline:
        try:
            request = Request(health_url, headers={"User-Agent": "DebSoc-Render-Rotation/1.0"})
            with urlopen(request, timeout=30) as response:
                if 200 <= response.status < 400:
                    return
        except (HTTPError, URLError, TimeoutError):
            pass
        time.sleep(POLL_SECONDS)
    raise RenderAPIError("The redeployed Tabbycat website did not pass its HTTP health check.")


def rotate(client, *, force):
    if os.environ.get("ROTATION_SAFETY_TOKEN") != SAFETY_TOKEN:
        raise RenderAPIError(
            "Safety stop: final sync and encrypted backup guard was not supplied by the workflow."
        )

    state = current_state(client)
    if not state["managed"]:
        raise RenderAPIError("Safety stop: run the adopt command before enabling rotation.")
    if not state["due"] and not force:
        print(json.dumps({"rotated": False, **state}))
        return

    service, database, owner_id = discover(client, database_required=False)
    service_id = resource_id(service, "service")
    old_database_id = resource_id(database, "database") if database else None
    rotation_state = get_rotation_state(client, service_id)
    resume_provisioned = bool(
        database and rotation_state == f"provisioned:{old_database_id}"
    )

    # Disable push deployments before changing infrastructure. The workflow is
    # the only component allowed to deploy during a rotation.
    client.update_service(service_id, {"autoDeploy": "no"})
    if resume_provisioned:
        new_database_id = old_database_id
    else:
        client.update_env_var(
            service_id,
            ROTATION_STATE_KEY,
            f"rotating:{old_database_id or 'missing'}",
        )
        payload = create_payload(database, owner_id)
        if database:
            client.delete_postgres(old_database_id)

        new_database = client.create_postgres(payload)
        new_database_id = resource_id(new_database, "new database")
        client.update_env_var(
            service_id,
            ROTATION_STATE_KEY,
            f"provisioned:{new_database_id}",
        )
    wait_for_database(client, new_database_id)
    connection_info = client.postgres_connection_info(new_database_id)
    internal_url = find_connection_string(connection_info, internal=True)

    client.update_env_var(service_id, "DATABASE_URL", internal_url)
    client.update_env_var(service_id, "DEBSOC_RENDER_DATABASE_ID", new_database_id)
    deploy = client.trigger_deploy(service_id)
    deploy_id = resource_id(deploy, "deploy")
    wait_for_deploy(client, service_id, deploy_id)
    wait_for_health(field(service, "url"))
    client.update_env_var(service_id, ROTATION_STATE_KEY, f"ready:{new_database_id}")

    print(json.dumps({
        "rotated": True,
        "old_database_id": old_database_id,
        "new_database_id": new_database_id,
        "service_id": service_id,
        "deploy_id": deploy_id,
    }))


def build_parser():
    parser = argparse.ArgumentParser()
    subparsers = parser.add_subparsers(dest="command", required=True)
    check = subparsers.add_parser("check")
    check.add_argument("--github-output")
    subparsers.add_parser("adopt")
    subparsers.add_parser("prepare-recovery")
    rotation = subparsers.add_parser("rotate")
    rotation.add_argument("--force", action="store_true")
    rotation.add_argument("--allow-destructive-rotation", action="store_true")
    return parser


def main():
    args = build_parser().parse_args()
    client = RenderClient(os.environ.get("RENDER_API_KEY"))
    if args.command == "check":
        state = current_state(client)
        write_github_output(args.github_output, state)
        print(json.dumps(state))
    elif args.command == "adopt":
        adopt(client)
    elif args.command == "prepare-recovery":
        prepare_missing_database_recovery(client)
    elif args.command == "rotate":
        if not args.allow_destructive_rotation:
            raise RenderAPIError("Safety stop: destructive rotation flag is required.")
        rotate(client, force=args.force)


if __name__ == "__main__":
    try:
        main()
    except RenderAPIError as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        raise SystemExit(1)
