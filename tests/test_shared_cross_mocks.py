"""Shared-debate integration checks. Only a disposable, network-isolated DB is used."""
import json
import subprocess
from test_account_link_database import AccountLinkDatabaseTest as Database


class SharedCrossMocksTest(Database):
    @classmethod
    def setUpClass(cls):
        super().setUpClass()
        cls.sql('ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT EXECUTE ON FUNCTIONS TO anon,authenticated;')
        cls.sql((__import__('pathlib').Path(__file__).resolve().parents[1] / 'migrations/20261027_shared_cross_mocks.sql').read_text())
        cls.sql((__import__('pathlib').Path(__file__).resolve().parents[1] / 'migrations/20261027_simple_cross_mock_submission.sql').read_text())
        cls.sql("INSERT INTO public.dk_cross_roster(member_key,member_name,year) SELECT lower(n),n,'1' FROM unnest(ARRAY['Alice','Bob','Carol','Dave','Eve','Frank','Grace','Hana','Ivan']) n")

    def setUp(self):
        super().setUp()
        self.sql('TRUNCATE public.dk_cross_participants,public.dk_cross_debates;')
        if self._testMethodName in SharedCrossMocksTest.__dict__:
            for number, name in enumerate(['Alice','Bob','Carol','Dave','Eve'],1):
                self.sql(self.claim(number,name))

    def entry(self, **overrides):
        result=dict(debated_on='2026-10-20',opponent='Other society',format='AP',round_label='R1 A',motion='This House would test its code.',info_slide='Some context.',participants=[self.speaker('alice'),self.speaker('bob')])
        result.update(overrides)
        return result

    @staticmethod
    def speaker(name, team=1, score=None):
        return dict(member_key=name,role='Speaker',team_slot=team,speaker_score=score,adj_score=None)

    def query(self, number, entry):
        value=json.dumps(entry).replace("'","''")
        return self.as_user(number,f"SELECT public.dk_cross_submit('{value}'::jsonb);")

    def save(self, number=1, entry=None, success=True):
        result=self.sql(self.query(number,entry or self.entry()),success=success)
        return result.stdout.strip().splitlines()[-1] if success else result

    def scalar(self, sql):
        return self.sql(sql).stdout.strip()

    def simple(self, number=1, entry=None, success=True):
        data=dict(entry or self.entry());data.pop('round_label',None)
        command=self.query(number,data).replace('dk_cross_submit(', 'dk_cross_submit_simple(')
        result=self.sql(command,success=success)
        return result.stdout.strip().splitlines()[-1] if success else result

    def test_simple_form_merges_without_round_or_debate_selector(self):
        game=self.simple()
        self.assertEqual(game,self.simple(2))
        self.assertEqual(self.scalar('SELECT count(*) FROM public.dk_cross_debates'),'1')
        self.assertEqual(self.scalar('SELECT count(*) FROM public.dk_cross_participants WHERE confirmed'),'2')

    def test_simple_form_reuses_legacy_record_without_rewriting_its_room(self):
        game=self.save(entry=self.entry(round_label='Original room'))
        self.assertEqual(game,self.simple(2))
        self.assertEqual(self.scalar('SELECT round_label FROM public.dk_cross_debates'),'Original room')

    def test_simple_form_recognises_existing_team_for_individual_teammate_submission(self):
        game=self.save(entry=self.entry(participants=[self.speaker('alice',2),self.speaker('bob',2)]))
        self.assertEqual(game,self.simple(2,self.entry(participants=[self.speaker('bob')])) )
        self.assertEqual(self.scalar("SELECT team_slot FROM public.dk_cross_participants WHERE member_key='bob'"),'2')

    def test_ambiguous_legacy_rounds_are_never_silently_combined(self):
        self.save();self.save(entry=self.entry(round_label='R2 A'))
        self.simple(2,success=False)
        self.assertEqual(self.scalar('SELECT count(*) FROM public.dk_cross_debates'),'2')

    def test_simple_submission_keeps_identity_privacy_motion_and_cap_checks(self):
        self.simple(entry=self.entry(motion=''),success=False)
        self.simple(entry=self.entry(participants=[self.speaker(n) for n in ['alice','bob','carol','dave']]),success=False)
        self.sql("SET ROLE anon; SELECT public.dk_cross_submit_simple('{}')",success=False)
        self.assertEqual(self.scalar('SELECT count(*) FROM public.dk_cross_debates'),'0')

    def test_shared_team_submissions_are_idempotent_and_self_confirmed(self):
        game=self.save()
        self.assertEqual(game,self.save())
        self.assertEqual(self.scalar('SELECT count(*) FROM public.dk_cross_debates'),'1')
        self.assertEqual(self.scalar('SELECT count(*) FROM public.dk_cross_participants'),'2')
        self.assertEqual(self.scalar('SELECT count(*) FROM public.dk_cross_participants WHERE confirmed'),'1')
        self.assertEqual(game,self.save(2))
        self.assertEqual(self.scalar('SELECT count(*) FROM public.dk_cross_participants WHERE confirmed'),'2')
        self.assertEqual(self.scalar('SELECT count(*) FROM public.dk_cross_participants WHERE speaker_score IS NULL'),'2')

    def test_individual_entries_and_two_teams_merge_without_losing_people(self):
        game=self.save(entry=self.entry(participants=[self.speaker('alice')]))
        self.assertEqual(game,self.save(2,self.entry(participants=[self.speaker('bob'),self.speaker('carol',2)])))
        self.assertEqual(game,self.save(3,self.entry(participants=[self.speaker('carol',2),self.speaker('dave',2)])))
        self.assertEqual(self.scalar('SELECT count(*) FROM public.dk_cross_participants'),'4')
        self.assertEqual(self.scalar('SELECT count(*) FROM public.dk_cross_participants WHERE confirmed'),'3')

    def test_caps_ap_two_teams_of_three_bp_three_of_two(self):
        self.save(entry=self.entry(participants=[self.speaker(n) for n in ['alice','bob','carol']]))
        self.save(entry=self.entry(participants=[self.speaker('alice'),self.speaker('dave')]),success=False)
        self.save(entry=self.entry(participants=[self.speaker('alice'),self.speaker('eve',3)]),success=False)
        self.assertEqual(self.scalar('SELECT count(*) FROM public.dk_cross_participants'),'3')
        self.save(entry=self.entry(format='BP',participants=[self.speaker('alice'),self.speaker('bob'),self.speaker('carol',2),self.speaker('dave',2),self.speaker('eve',3)]))
        self.save(entry=self.entry(format='BP',participants=[self.speaker('alice'),self.speaker('frank')]),success=False)
        self.assertEqual(self.scalar('SELECT count(*) FROM public.dk_cross_debates'),'2')

    def test_all_roles_optional_scores_and_strict_ranges(self):
        adj=dict(member_key='alice',role='Adjudicator',team_slot=None,speaker_score=None,adj_score=None)
        self.save(entry=self.entry(participants=[adj,self.speaker('bob',score=60)]))
        for field, value in [('adj_score',0),('adj_score',10.1),('adj_score',8.49),('speaker_score',75)]:
            self.save(entry=self.entry(participants=[dict(adj,**{field:value})]),success=False)
        for score in [0,59,101,75.49]:
            self.save(entry=self.entry(round_label=str(score),participants=[self.speaker('alice',score=score)]),success=False)
        self.save(entry=self.entry(round_label='BP Adjs',format='BP',participants=[dict(adj,adj_score=7.5)]+[dict(adj,member_key=n) for n in ['bob','carol','dave','eve','frank','grace','hana','ivan']]))

    def test_missing_unknown_duplicate_and_wrong_role_rejected(self):
        for entry in [self.entry(motion=''),self.entry(format=None),self.entry(debated_on='2999-01-01'),self.entry(participants=[self.speaker('bob')]),self.entry(participants=[self.speaker('alice'),self.speaker('made up')]),self.entry(participants=[self.speaker('alice'),self.speaker('alice',2)]),self.entry(participants=[dict(self.speaker('alice'),role='Other')])]:
            self.save(entry=entry,success=False)
        self.assertEqual(self.scalar('SELECT count(*) FROM public.dk_cross_debates'),'0')
        self.sql(self.query(6,self.entry()),success=False)
        self.sql(self.query(7,self.entry()),success=False)

    def test_rounds_do_not_collapse_and_text_normalization_does_merge(self):
        game=self.save()
        self.assertEqual(game,self.save(entry=self.entry(opponent=' OTHER  society ',motion='This House would TEST its code.')))
        self.assertNotEqual(game,self.save(entry=self.entry(round_label='R2 A')))

    def test_conflicting_scores_teams_and_infoslides_never_overwrite(self):
        game=self.save(entry=self.entry(participants=[self.speaker('alice',score=75),self.speaker('bob')]))
        for entry in [self.entry(participants=[self.speaker('alice',score=76)]),self.entry(participants=[self.speaker('alice',2)]),self.entry(info_slide='Different context'),self.entry(debate_id=game,motion='Different motion')]:
            self.save(entry=entry,success=False)
        self.assertEqual(self.scalar("SELECT speaker_score FROM public.dk_cross_participants WHERE member_key='alice'"),'75')

    def test_confirm_and_retract_are_owner_only_and_cannot_overfill(self):
        game=self.save()
        self.sql(self.as_user(3,f"SELECT public.dk_cross_confirm('{game}')"),success=False)
        self.sql(self.as_user(2,f"SELECT public.dk_cross_confirm('{game}')"))
        self.sql(self.as_user(2,f"SELECT public.dk_cross_retract('{game}')"))
        self.save(entry=self.entry(participants=[self.speaker('alice'),self.speaker('carol'),self.speaker('dave')]))
        self.sql(self.as_user(2,f"SELECT public.dk_cross_confirm('{game}')"),success=False)
        self.save(entry=self.entry(participants=[self.speaker('alice'),self.speaker('bob')]))
        self.assertEqual(self.scalar("SELECT withdrawn FROM public.dk_cross_participants WHERE member_key='bob'"),'t')

    def test_public_projection_and_private_tables(self):
        self.save()
        output=self.sql('SET ROLE anon; SELECT row_to_json(d) FROM public.dk_cross_debates_feed() d').stdout
        row=json.loads(next(line for line in output.splitlines() if line.startswith('{')))
        self.assertEqual(set(row),{'id','debated_on','opponent','format','round_label','motion','info_slide','participants'})
        self.assertNotIn('user_id',output);self.assertNotIn('created_by',output);self.assertNotIn('submitted_by',output)
        for table in ['dk_profiles','dk_cross_roster','dk_cross_debates','dk_cross_participants']:
            self.sql(f'SET ROLE anon; SELECT * FROM public.{table}',success=False)
            if table!='dk_profiles':self.sql(self.as_user(1,f'SELECT * FROM public.{table}'),success=False)
        self.sql("SET ROLE anon; SELECT public.dk_cross_submit('{}')",success=False)
        self.assertIn('permission denied',self.sql("SET ROLE anon; SELECT public.dk_cross_submit('{}')",success=False).stderr)
        for function in ["dk_cross_actor()","dk_cross_key('Alice')"]:
            self.sql(f'SET ROLE anon; SELECT public.{function}',success=False)
            self.sql(self.as_user(1,f'SELECT public.{function}'),success=False)

    def test_concurrent_team_submissions_share_a_single_debate(self):
        commands=[self.query(1,self.entry()),self.query(2,self.entry())]
        processes=[subprocess.Popen(self.command(),stdin=subprocess.PIPE,stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True) for _ in commands]
        for process,command in zip(processes,commands):
            process.stdin.write('BEGIN; '+command+' SELECT pg_sleep(.3); COMMIT;');process.stdin.close()
        outcomes=[p.wait(timeout=20) for p in processes]
        errors=[]
        for p in processes:errors.append(p.stderr.read());p.stdout.close();p.stderr.close()
        self.assertEqual(outcomes,[0,0],errors)
        self.assertEqual(self.scalar('SELECT count(*) FROM public.dk_cross_debates'),'1')
        self.assertEqual(self.scalar('SELECT count(*) FROM public.dk_cross_participants WHERE confirmed'),'2')
