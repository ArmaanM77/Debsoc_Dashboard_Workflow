import unittest
from pathlib import Path


class MemberCharacterProjectionTest(unittest.TestCase):
    def test_projection_exposes_only_name_and_whitelisted_character_choices(self):
        root = Path(__file__).resolve().parents[1]
        sql = (root / 'migrations/20261024_member_characters.sql').read_text()
        self.assertIn('RETURNS TABLE (member_name text, character jsonb)', sql)
        self.assertIn("SECURITY DEFINER SET search_path = ''", sql)
        self.assertIn('REVOKE ALL ON FUNCTION', sql)
        self.assertIn('TO anon, authenticated', sql)
        self.assertIn('item.key IN', sql)
        self.assertNotRegex(sql, r'(?i)DROP\s+(TABLE|POLICY)|ALTER TABLE|DELETE FROM|TRUNCATE|GRANT SELECT')
        self.assertNotIn('p.user_id', sql)
        self.assertNotIn('p.display_name', sql)

    def test_activation_is_manual_and_requires_successful_backup(self):
        root = Path(__file__).resolve().parents[1]
        workflow = (root / '.github/workflows/member-characters.yml').read_text()
        self.assertIn('workflow_dispatch:', workflow)
        self.assertNotIn('push:', workflow)
        self.assertIn('needs: backup', workflow)
        self.assertIn('backup-supabase.yml', workflow)
        self.assertIn('--single-transaction', workflow)
        self.assertIn("has_table_privilege('anon','public.dk_profiles','SELECT')", workflow)
