import os
import unittest
from datetime import datetime, timedelta, timezone
from unittest.mock import patch

import render_rotation
from render_api import RenderAPIError, exact_resource, find_connection_string


class FakeRenderClient:
    def __init__(self, *, database, rotation_state):
        self.database = database
        self.rotation_state = rotation_state

    def list_services(self, name):
        return [{
            "service": {
                "id": "srv-123",
                "name": name,
                "ownerId": "tea-123",
                "url": "https://example.invalid",
            }
        }]

    def list_postgres(self, name):
        if self.database is None:
            return []
        return [{"postgres": self.database}]

    def retrieve_env_var(self, service_id, key):
        if self.rotation_state is None:
            raise RenderAPIError("Render API GET env returned HTTP 404.")
        return {"envVar": {"key": key, "value": self.rotation_state}}

    def update_service(self, service_id, payload):
        self.updated_service = (service_id, payload)

    def update_env_var(self, service_id, key, value):
        self.rotation_state = value if key == render_rotation.ROTATION_STATE_KEY else self.rotation_state


class RecoveryRenderClient(FakeRenderClient):
    def __init__(self):
        super().__init__(database=None, rotation_state="recovery:missing")
        self.disconnected = None
        self.deleted = None

    def retrieve_blueprint(self, blueprint_id):
        return {"id": blueprint_id, "ownerId": "tea-123"}

    def disconnect_blueprint(self, blueprint_id):
        self.disconnected = blueprint_id

    def retrieve_postgres(self, postgres_id):
        return {
            "id": postgres_id,
            "name": render_rotation.DATABASE_NAME,
            "ownerId": "tea-123",
            "plan": "free",
            "status": "suspended",
        }

    def delete_postgres(self, postgres_id):
        self.deleted = postgres_id


class RenderAPIHelpersTests(unittest.TestCase):
    def test_exact_resource_rejects_duplicate_names(self):
        resources = [
            {"postgres": {"id": "dpg-one", "name": "tabbycat_database"}},
            {"postgres": {"id": "dpg-two", "name": "tabbycat_database"}},
        ]
        with self.assertRaises(RenderAPIError):
            exact_resource(
                resources,
                wrapper="postgres",
                name="tabbycat_database",
            )

    def test_connection_strings_are_selected_by_network_type(self):
        payload = {
            "connectionInfo": {
                "internalConnectionString": "postgresql://internal/db",
                "externalConnectionString": "postgresql://external/db",
            }
        }
        self.assertEqual(
            find_connection_string(payload, internal=True),
            "postgresql://internal/db",
        )
        self.assertEqual(
            find_connection_string(payload, internal=False),
            "postgresql://external/db",
        )


class RotationStateTests(unittest.TestCase):
    def database(self, *, age_days, status="available"):
        created = datetime.now(timezone.utc) - timedelta(days=age_days)
        return {
            "id": "dpg-123",
            "name": render_rotation.DATABASE_NAME,
            "ownerId": "tea-123",
            "plan": "free",
            "createdAt": created.isoformat(),
            "status": status,
        }

    def test_unadopted_database_never_rotates(self):
        client = FakeRenderClient(database=self.database(age_days=40), rotation_state=None)
        state = render_rotation.current_state(client)
        self.assertFalse(state["due"])
        self.assertEqual(state["reason"], "not_adopted")

    def test_adopted_old_database_is_due(self):
        client = FakeRenderClient(
            database=self.database(age_days=26),
            rotation_state="ready:dpg-123",
        )
        state = render_rotation.current_state(client)
        self.assertTrue(state["due"])
        self.assertFalse(state["recovery"])
        self.assertEqual(state["reason"], "age_threshold")

    def test_interrupted_rotation_is_recoverable(self):
        client = FakeRenderClient(
            database=self.database(age_days=1),
            rotation_state="provisioned:dpg-123",
        )
        state = render_rotation.current_state(client)
        self.assertTrue(state["due"])
        self.assertTrue(state["recovery"])

    def test_missing_database_enters_recovery(self):
        client = FakeRenderClient(database=None, rotation_state="rotating:dpg-old")
        state = render_rotation.current_state(client)
        self.assertTrue(state["due"])
        self.assertTrue(state["recovery"])

    def test_missing_database_can_be_adopted_without_deletion(self):
        client = FakeRenderClient(database=None, rotation_state=None)
        render_rotation.adopt(client)
        self.assertEqual(client.rotation_state, "recovery:missing")
        self.assertEqual(client.updated_service, ("srv-123", {"autoDeploy": "no"}))

    def test_expired_database_skips_final_source_sync(self):
        client = FakeRenderClient(
            database=self.database(age_days=30, status="suspended"),
            rotation_state="ready:dpg-123",
        )
        state = render_rotation.current_state(client)
        self.assertTrue(state["due"])
        self.assertTrue(state["recovery"])
        self.assertFalse(state["source_accessible"])
        self.assertEqual(state["reason"], "database_unavailable")

    def test_destructive_rotation_requires_workflow_guard(self):
        client = FakeRenderClient(
            database=self.database(age_days=26),
            rotation_state="ready:dpg-123",
        )
        with patch.dict(os.environ, {}, clear=False):
            os.environ.pop("ROTATION_SAFETY_TOKEN", None)
            with self.assertRaises(RenderAPIError):
                render_rotation.rotate(client, force=False)

    def test_prepare_recovery_disconnects_before_deleting_exact_legacy_database(self):
        client = RecoveryRenderClient()
        env = {
            "ROTATION_SAFETY_TOKEN": render_rotation.SAFETY_TOKEN,
            "RENDER_BLUEPRINT_ID": "exs-123",
            "RENDER_LEGACY_DATABASE_ID": "dpg-old",
        }
        with patch.dict(os.environ, env, clear=False):
            render_rotation.prepare_missing_database_recovery(client)
        self.assertEqual(client.disconnected, "exs-123")
        self.assertEqual(client.deleted, "dpg-old")
        self.assertEqual(client.rotation_state, "recovery:detached")


if __name__ == "__main__":
    unittest.main()
