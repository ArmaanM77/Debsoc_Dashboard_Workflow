"""Small, dependency-free client for the Render API.

The helpers in this module deliberately select resources by an exact name and
workspace. Destructive callers should never operate on the first fuzzy match.
"""

from __future__ import annotations

import json
import random
import time
from urllib.error import HTTPError, URLError
from urllib.parse import quote, urlencode
from urllib.request import Request, urlopen


API_ROOT = "https://api.render.com/v1"
RETRYABLE_STATUSES = {429, 500, 502, 503, 504}


class RenderAPIError(RuntimeError):
    pass


def field(payload, *names, default=None):
    for name in names:
        if isinstance(payload, dict) and name in payload:
            return payload[name]
    return default


def unwrap(payload, resource_name):
    if isinstance(payload, dict) and isinstance(payload.get(resource_name), dict):
        return payload[resource_name]
    return payload


def exact_resource(resources, *, wrapper, name, owner_id=None, required=True):
    matches = []
    for item in resources:
        resource = unwrap(item, wrapper)
        if not isinstance(resource, dict) or resource.get("name") != name:
            continue
        if owner_id and field(resource, "ownerId", "owner_id") != owner_id:
            continue
        matches.append(resource)

    if len(matches) > 1:
        raise RenderAPIError(
            f"Safety stop: found {len(matches)} Render {wrapper} resources named {name!r}."
        )
    if not matches:
        if required:
            raise RenderAPIError(f"Render {wrapper} resource named {name!r} was not found.")
        return None
    return matches[0]


def find_connection_string(payload, *, internal):
    preferred = (
        ("internalConnectionString", "internal_connection_string", "internalUrl", "internal_url")
        if internal
        else ("externalConnectionString", "external_connection_string", "externalUrl", "external_url")
    )

    def walk(value):
        if isinstance(value, dict):
            for key in preferred:
                candidate = value.get(key)
                if isinstance(candidate, str) and candidate.startswith(("postgres://", "postgresql://")):
                    return candidate
            for child in value.values():
                found = walk(child)
                if found:
                    return found
        elif isinstance(value, list):
            for child in value:
                found = walk(child)
                if found:
                    return found
        return None

    result = walk(payload)
    if not result:
        kind = "internal" if internal else "external"
        raise RenderAPIError(f"Render did not return an {kind} PostgreSQL connection string.")
    return result


class RenderClient:
    def __init__(self, api_key, *, timeout=30, retries=4):
        if not api_key:
            raise RenderAPIError("RENDER_API_KEY is required.")
        self.api_key = api_key
        self.timeout = timeout
        self.retries = retries

    def request(self, method, path, *, payload=None, expected=(200,)):
        url = f"{API_ROOT}{path}"
        body = None if payload is None else json.dumps(payload).encode("utf-8")
        headers = {
            "Accept": "application/json",
            "Authorization": f"Bearer {self.api_key}",
        }
        if body is not None:
            headers["Content-Type"] = "application/json"

        for attempt in range(1, self.retries + 1):
            request = Request(url, data=body, headers=headers, method=method)
            try:
                with urlopen(request, timeout=self.timeout) as response:
                    raw = response.read()
                    if response.status not in expected:
                        raise RenderAPIError(
                            f"Render API {method} {path} returned HTTP {response.status}."
                        )
                    return json.loads(raw) if raw else None
            except HTTPError as exc:
                if exc.code in RETRYABLE_STATUSES and attempt < self.retries:
                    time.sleep(min(20, 2 ** attempt + random.random()))
                    continue
                # Never include Render's response body: connection-info errors
                # can contain sensitive values.
                raise RenderAPIError(
                    f"Render API {method} {path} returned HTTP {exc.code}."
                ) from exc
            except URLError as exc:
                if attempt < self.retries:
                    time.sleep(min(20, 2 ** attempt + random.random()))
                    continue
                raise RenderAPIError(f"Render API {method} {path} could not be reached.") from exc

    def paginated(self, path, **params):
        items = []
        cursor = None
        while True:
            query = {**params, "limit": 100}
            if cursor:
                query["cursor"] = cursor
            page = self.request("GET", f"{path}?{urlencode(query, doseq=True)}") or []
            if not isinstance(page, list):
                raise RenderAPIError(f"Unexpected paginated response from {path}.")
            items.extend(page)
            if len(page) < 100:
                break
            cursor = page[-1].get("cursor") if isinstance(page[-1], dict) else None
            if not cursor:
                break
        return items

    def list_services(self, name):
        return self.paginated("/services", name=name)

    def list_postgres(self, name):
        return self.paginated("/postgres", name=name, includeReplicas="false")

    def retrieve_env_var(self, service_id, key):
        return self.request(
            "GET",
            f"/services/{quote(service_id)}/env-vars/{quote(key)}",
        )

    def postgres_connection_info(self, postgres_id):
        return self.request("GET", f"/postgres/{quote(postgres_id)}/connection-info")

    def retrieve_postgres(self, postgres_id):
        return unwrap(
            self.request("GET", f"/postgres/{quote(postgres_id)}"),
            "postgres",
        )

    def create_postgres(self, payload):
        return unwrap(
            self.request("POST", "/postgres", payload=payload, expected=(201,)),
            "postgres",
        )

    def delete_postgres(self, postgres_id):
        self.request("DELETE", f"/postgres/{quote(postgres_id)}", expected=(204,))

    def update_service(self, service_id, payload):
        return unwrap(
            self.request("PATCH", f"/services/{quote(service_id)}", payload=payload),
            "service",
        )

    def update_env_var(self, service_id, key, value):
        return self.request(
            "PUT",
            f"/services/{quote(service_id)}/env-vars/{quote(key)}",
            payload={"value": value},
        )

    def trigger_deploy(self, service_id):
        return unwrap(
            self.request(
                "POST",
                f"/services/{quote(service_id)}/deploys",
                payload={"clearCache": "do_not_clear"},
                expected=(201, 202),
            ),
            "deploy",
        )

    def retrieve_deploy(self, service_id, deploy_id):
        return unwrap(
            self.request("GET", f"/services/{quote(service_id)}/deploys/{quote(deploy_id)}"),
            "deploy",
        )
