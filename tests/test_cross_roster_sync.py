import importlib.util
from pathlib import Path
import unittest

spec=importlib.util.spec_from_file_location('cross_roster',Path(__file__).resolve().parents[1]/'scripts/sync_cross_roster.py')
roster=importlib.util.module_from_spec(spec)
spec.loader.exec_module(roster)

class RosterSyncTest(unittest.TestCase):
    def test_headers_years_and_normalized_names(self):
        rows=roster.parse_roster('\ufeffName,Year,Graduation Year\n Alice  Smith ,Year 1,\nBob,Alumni,2026\n')
        self.assertEqual(rows,[('alice smith','Alice  Smith','1',''),('bob','Bob','Alum','2026')])

    def test_bad_or_empty_rosters_cannot_replace_the_registered_list(self):
        for text in ['Name,Year\n','Name,Year\nAlice,no\n','Name,Year\nAlice,1\n ALICE ,2\n','Name,Year,Graduation Year\nAlice,1,26\n']:
            with self.subTest(text=text),self.assertRaises(ValueError):roster.parse_roster(text)
