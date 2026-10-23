-- Additive member features only. No changes to historical Tabbycat mirror tables.
CREATE TABLE IF NOT EXISTS public.dk_profiles (
  user_id uuid PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  member_name text NOT NULL CHECK (length(trim(member_name)) BETWEEN 1 AND 120),
  display_name text NOT NULL CHECK (length(trim(display_name)) BETWEEN 1 AND 120),
  avatar_config jsonb NOT NULL DEFAULT '{}'::jsonb CHECK (octet_length(avatar_config::text) < 4096),
  created_at timestamptz NOT NULL DEFAULT now()
);
CREATE TABLE IF NOT EXISTS public.dk_tournament_entries (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  tournament text NOT NULL CHECK (length(trim(tournament)) BETWEEN 1 AND 160),
  role text NOT NULL CHECK (role IN ('Speaker','Adjudicator','Tabulation','Organising committee','Other')),
  break_achieved boolean NOT NULL DEFAULT false,
  break_details text NOT NULL DEFAULT '' CHECK (length(break_details) <= 500),
  created_at timestamptz NOT NULL DEFAULT now(),
  CHECK ((break_achieved AND length(trim(break_details)) > 0) OR (NOT break_achieved AND break_details = ''))
);
ALTER TABLE public.dk_profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.dk_tournament_entries ENABLE ROW LEVEL SECURITY;
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname='public' AND tablename='dk_profiles' AND policyname='profile_owner') THEN
    CREATE POLICY profile_owner ON public.dk_profiles TO authenticated USING ((select auth.uid()) = user_id) WITH CHECK ((select auth.uid()) = user_id);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE schemaname='public' AND tablename='dk_tournament_entries' AND policyname='entry_owner') THEN
    CREATE POLICY entry_owner ON public.dk_tournament_entries TO authenticated USING ((select auth.uid()) = user_id) WITH CHECK ((select auth.uid()) = user_id);
  END IF;
END
$$;
REVOKE ALL ON public.dk_profiles, public.dk_tournament_entries FROM anon;
GRANT SELECT, INSERT, UPDATE ON public.dk_profiles TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.dk_tournament_entries TO authenticated;
CREATE OR REPLACE FUNCTION public.dk_tournament_feed()
RETURNS TABLE (id uuid, member_name text, tournament text, role text, break_achieved boolean, break_details text, created_at timestamptz)
LANGUAGE sql STABLE SECURITY DEFINER SET search_path = ''
AS $$
  SELECT e.id, p.member_name, e.tournament, e.role, e.break_achieved, e.break_details, e.created_at
  FROM public.dk_tournament_entries e
  JOIN public.dk_profiles p ON p.user_id=e.user_id
  ORDER BY e.created_at DESC, e.id
  LIMIT 10000
$$;
REVOKE ALL ON FUNCTION public.dk_tournament_feed() FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.dk_tournament_feed() TO anon, authenticated;
NOTIFY pgrst, 'reload schema';
