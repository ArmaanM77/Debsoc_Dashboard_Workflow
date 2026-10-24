"""Integration checks in a disposable PostgreSQL container; never uses DEST_DB_URL."""
import os
from pathlib import Path
import subprocess
import time
import unittest
import uuid

ROOT = Path(__file__).resolve().parents[1]


@unittest.skipUnless(os.environ.get('RUN_POSTGRES_TESTS') == '1', 'Set RUN_POSTGRES_TESTS=1 for isolated Docker tests')
class AccountLinkDatabaseTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.container = 'debsoc-link-test-' + uuid.uuid4().hex[:12]
        subprocess.run(['docker', 'run', '--detach', '--rm', '--network', 'none',
                        '--name', cls.container, '-e', 'POSTGRES_HOST_AUTH_METHOD=trust',
                        'postgres:17'], check=True, capture_output=True, timeout=120)
        cls.addClassCleanup(lambda: subprocess.run(['docker', 'stop', cls.container], capture_output=True, timeout=30))
        for _ in range(100):
            ready = subprocess.run(['docker', 'exec', cls.container, 'pg_isready', '-U', 'postgres'], capture_output=True)
            if ready.returncode == 0:
                break
            time.sleep(.2)
        else:
            raise RuntimeError('Isolated PostgreSQL did not become ready')
        cls.sql("""
          CREATE ROLE anon NOLOGIN; CREATE ROLE authenticated NOLOGIN;
          CREATE SCHEMA auth;
          CREATE TABLE auth.users(id uuid PRIMARY KEY, email_confirmed_at timestamptz);
          CREATE TABLE auth.identities(user_id uuid, provider text);
          CREATE FUNCTION auth.uid() RETURNS uuid LANGUAGE sql STABLE AS
          $$ SELECT nullif(current_setting('request.jwt.claim.sub',true),'')::uuid $$;
          GRANT USAGE ON SCHEMA auth TO anon,authenticated;
          GRANT EXECUTE ON FUNCTION auth.uid() TO anon,authenticated;
        """)
        for file in ['20261023_member_profiles.sql', '20261024_unique_member_claims.sql']:
            cls.sql((ROOT / 'migrations' / file).read_text())
        for number in range(1, 8):
            user_id = cls.user_id(number)
            confirmed = 'NULL' if number == 6 else 'now()'
            provider = 'email' if number == 7 else 'google'
            cls.sql(f"INSERT INTO auth.users VALUES ('{user_id}',{confirmed}); INSERT INTO auth.identities VALUES ('{user_id}','{provider}');")
        cls.migration = (ROOT / 'migrations/20261024_account_link_safety.sql').read_text()

    @classmethod
    def command(cls):
        return ['docker', 'exec', '-i', cls.container, 'psql', '-U', 'postgres', '-v', 'ON_ERROR_STOP=1', '-t', '-A']

    @classmethod
    def sql(cls, sql, success=True):
        result = subprocess.run(cls.command(), input=sql, capture_output=True, text=True, timeout=30)
        if success and result.returncode:
            raise AssertionError(result.stderr)
        if not success and result.returncode == 0:
            raise AssertionError('Unsafe operation unexpectedly succeeded')
        return result

    @staticmethod
    def user_id(number):
        return f'00000000-0000-4000-8000-{number:012d}'

    @classmethod
    def as_user(cls, number, sql):
        return f"SET ROLE authenticated; SET request.jwt.claim.sub='{cls.user_id(number)}'; {sql}"

    @classmethod
    def claim(cls, number, name):
        safe_name = name.replace("'", "''")
        return cls.as_user(number, f"INSERT INTO public.dk_profiles(user_id,member_name,display_name) VALUES ('{cls.user_id(number)}','{safe_name}','Display');")

    def setUp(self):
        self.sql('TRUNCATE public.dk_tournament_entries, public.dk_profiles;')
        self.sql(self.migration)

    def test_unique_names_ignore_case_repeated_spaces_and_nonbreaking_spaces(self):
        self.sql(self.claim(1, 'Aaditya  Goyal'))
        for name in [' aaditya goyal ', 'AADITYA\tGOYAL', 'Aaditya\u00a0Goyal']:
            self.sql(self.claim(2, name), success=False)
        self.assertEqual(self.sql('SELECT count(*) FROM public.dk_profiles').stdout.strip(), '1')

    def test_one_account_cannot_claim_two_names_or_reassign_its_link(self):
        self.sql(self.claim(1, 'Alice'))
        self.sql(self.claim(1, 'Bob'), success=False)
        self.sql(self.as_user(1, "UPDATE public.dk_profiles SET member_name='Bob'"), success=False)
        self.sql(self.as_user(1, f"UPDATE public.dk_profiles SET user_id='{self.user_id(2)}'"), success=False)
        self.sql(self.as_user(1, "UPDATE public.dk_profiles SET display_name='New display',avatar_config='{\"theme\":\"rose\"}'"))
        self.sql(self.as_user(1, 'DELETE FROM public.dk_profiles'), success=False)

    def test_private_records_and_entries_remain_owner_only(self):
        self.sql(self.claim(1, 'Alice'))
        self.assertEqual(self.sql(self.as_user(2, 'SELECT count(*) FROM public.dk_profiles')).stdout.splitlines()[-1], '0')
        self.sql(self.as_user(2, "UPDATE public.dk_profiles SET display_name='Hijacked'"))
        self.assertEqual(self.sql('SELECT display_name FROM public.dk_profiles').stdout.strip(), 'Display')
        entry = "INSERT INTO public.dk_tournament_entries(user_id,tournament,role) VALUES ('%s','Practice','Speaker')"
        self.sql(self.as_user(2, entry % self.user_id(2)), success=False)
        self.sql(self.as_user(2, entry % self.user_id(1)), success=False)
        self.sql(self.as_user(1, entry % self.user_id(1)))
        self.sql('SET ROLE anon; SELECT * FROM public.dk_profiles', success=False)

    def test_verified_google_and_matching_account_are_required(self):
        self.sql(self.claim(6, 'Unconfirmed'), success=False)
        self.sql(self.claim(7, 'Not Google'), success=False)
        self.sql(self.as_user(2, f"INSERT INTO public.dk_profiles(user_id,member_name,display_name) VALUES ('{self.user_id(1)}','Wrong account','X')"), success=False)

    def test_simultaneous_claims_have_exactly_one_winner(self):
        commands = [self.claim(1, 'Race Name'), self.claim(2, 'RACE  NAME')]
        processes = [subprocess.Popen(self.command(), stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True) for _ in commands]
        for process, command in zip(processes, commands):
            process.stdin.write('BEGIN; ' + command + ' SELECT pg_sleep(.4); COMMIT;')
            process.stdin.close()
        outcomes = [process.wait(timeout=15) for process in processes]
        for process in processes:
            process.stdout.close(); process.stderr.close()
        self.assertEqual(sum(code == 0 for code in outcomes), 1)
        self.assertEqual(self.sql('SELECT count(*) FROM public.dk_profiles').stdout.strip(), '1')

    def test_duplicate_preflight_rolls_back_without_removing_accounts(self):
        self.sql('DROP INDEX public.dk_profiles_canonical_member_identity;')
        self.sql(self.claim(1, 'Existing Name'))
        self.sql(self.claim(2, 'Existing  Name'))
        self.sql('BEGIN; ' + self.migration + ' COMMIT;', success=False)
        self.assertEqual(self.sql('SELECT count(*) FROM public.dk_profiles').stdout.strip(), '2')
