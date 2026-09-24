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
    def database(self, *, age_days):
        created = datetime.now(timezone.utc) - timedelta(days=age_days)
        return {
            "id": "dpg-123",
            "name": render_rotation.DATABASE_NAME,
            "ownerId": "tea-123",
            "plan": "free",
            "createdAt": created.isoformat(),
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

    def test_destructive_rotation_requires_workflow_guard(self):
        client = FakeRenderClient(
            database=self.database(age_days=26),
            rotation_state="ready:dpg-123",
        )
        with patch.dict(os.environ, {}, clear=False):
            os.environ.pop("ROTATION_SAFETY_TOKEN", None)
            with self.assertRaises(RenderAPIError):
                render_rotation.rotate(client, force=False)


if __name__ == "__main__":
    unittest.main()
