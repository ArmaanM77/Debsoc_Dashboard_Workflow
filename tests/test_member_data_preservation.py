import ast
import tempfile
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


class MemberDataPreservation(unittest.TestCase):
    def test_sync_cannot_overwrite_dashboard_owned_tables(self):
        tree = ast.parse((ROOT / 'sync.py').read_text(encoding='utf-8'))
        skip = next(ast.literal_eval(node.value) for node in tree.body
                    if isinstance(node, ast.Assign) and any(isinstance(t, ast.Name) and t.id == 'SKIP_TABLES' for t in node.targets))
        self.assertTrue({'dk_profiles', 'dk_tournament_entries'} <= skip)

    def test_manual_repair_drop_plan_preserves_profiles_and_entries(self):
        tree = ast.parse((ROOT / 'repair_supabase.py').read_text(encoding='utf-8'))
        selected = [node for node in tree.body if
                    isinstance(node, ast.FunctionDef) and node.name in {'quote_ident', 'restore_backup'} or
                    isinstance(node, ast.Assign) and any(isinstance(t, ast.Name) and t.id == 'PRESERVE_TABLES' for t in node.targets)]
        commands = []

        class Connection:
            def cursor(self): return self
            def __enter__(self): return self
            def __exit__(self, *args): pass
            def execute(self, sql): commands.append(sql)
            def commit(self): pass

        namespace = {'get_tables': lambda conn: ['dk_profiles', 'dk_tournament_entries', 'dashboard_settings', 'participants_person']}
        exec(compile(ast.Module(body=selected, type_ignores=[]), '<repair functions>', 'exec'), namespace)
        with tempfile.TemporaryDirectory() as folder:
            backup = Path(folder) / 'stub.sql'
            backup.write_text('SELECT 1;', encoding='utf-8')
            namespace['restore_backup'](Connection(), backup)
        drops = [sql for sql in commands if sql.startswith('DROP')]
        self.assertEqual(drops, ['DROP TABLE IF EXISTS "participants_person" CASCADE'])


if __name__ == '__main__':
    unittest.main()
