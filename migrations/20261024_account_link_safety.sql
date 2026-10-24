-- Additive safeguards only. Never merge accounts, delete duplicates or reassign names.
CREATE OR REPLACE FUNCTION public.dk_member_key(value text)
RETURNS text LANGUAGE sql IMMUTABLE STRICT SET search_path = '' AS $$
 SELECT pg_catalog.lower(pg_catalog.btrim(pg_catalog.regexp_replace(
  pg_catalog.translate(value,pg_catalog.chr(160),' '),'[[:space:]]+',' ','g')))
$$;
REVOKE ALL ON FUNCTION public.dk_member_key(text) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.dk_member_key(text) TO authenticated;

DO $$ BEGIN
 IF EXISTS (SELECT 1 FROM public.dk_profiles
  GROUP BY public.dk_member_key(member_name) HAVING count(*)>1) THEN
  RAISE EXCEPTION 'Duplicate member links need administrator review. No accounts or records were changed.';
 END IF;
END $$;
CREATE UNIQUE INDEX IF NOT EXISTS dk_profiles_canonical_member_identity
 ON public.dk_profiles(public.dk_member_key(member_name));

CREATE OR REPLACE FUNCTION public.dk_guard_profile_link()
RETURNS trigger LANGUAGE plpgsql SECURITY DEFINER SET search_path = '' AS $$
BEGIN
 IF TG_OP='UPDATE' AND (NEW.user_id IS DISTINCT FROM OLD.user_id
  OR NEW.member_name IS DISTINCT FROM OLD.member_name) THEN
  RAISE EXCEPTION USING ERRCODE='42501', MESSAGE='Linked accounts and member names cannot be reassigned. Contact the society administrator.';
 END IF;
 IF public.dk_member_key(NEW.member_name)='' THEN
  RAISE EXCEPTION USING ERRCODE='23514', MESSAGE='Choose a valid member name.';
 END IF;
 -- Owner maintenance remains possible; browser writes must have a verified
 -- Supabase identity with a confirmed email and server-recorded Google identity.
 IF pg_catalog.current_setting('role',true) IN ('anon','authenticated') OR auth.uid() IS NOT NULL THEN
  IF auth.uid() IS NULL OR NEW.user_id IS DISTINCT FROM auth.uid() THEN
   RAISE EXCEPTION USING ERRCODE='42501', MESSAGE='Sign in again before changing your profile.';
  END IF;
  IF NOT EXISTS (SELECT 1 FROM auth.users AS u JOIN auth.identities AS i ON i.user_id=u.id
    WHERE u.id=auth.uid() AND u.email_confirmed_at IS NOT NULL AND i.provider='google') THEN
   RAISE EXCEPTION USING ERRCODE='42501', MESSAGE='A verified Google account is required to link or edit a profile.';
  END IF;
 END IF;
 RETURN NEW;
END $$;
REVOKE ALL ON FUNCTION public.dk_guard_profile_link() FROM PUBLIC;
DROP TRIGGER IF EXISTS dk_profile_link_safety ON public.dk_profiles;
CREATE TRIGGER dk_profile_link_safety BEFORE INSERT OR UPDATE ON public.dk_profiles
 FOR EACH ROW EXECUTE FUNCTION public.dk_guard_profile_link();

REVOKE DELETE ON public.dk_profiles FROM authenticated;
ALTER POLICY entry_owner ON public.dk_tournament_entries
 USING ((select auth.uid())=user_id)
 WITH CHECK ((select auth.uid())=user_id AND EXISTS (
  SELECT 1 FROM public.dk_profiles AS p WHERE p.user_id=(select auth.uid())
 ));
NOTIFY pgrst, 'reload schema';
