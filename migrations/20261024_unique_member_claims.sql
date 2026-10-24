-- Additive identity safeguards. Never delete, rewrite, or reassign member data.
DO $$ BEGIN
 IF EXISTS (SELECT 1 FROM public.dk_profiles GROUP BY lower(btrim(member_name)) HAVING count(*)>1) THEN
  RAISE EXCEPTION 'Existing duplicate member links require manual review; no records were changed.';
 END IF;
END $$;
CREATE UNIQUE INDEX IF NOT EXISTS dk_profiles_member_identity ON public.dk_profiles (lower(btrim(member_name)));

CREATE OR REPLACE FUNCTION public.dk_keep_member_identity()
RETURNS trigger LANGUAGE plpgsql SET search_path = '' AS $$
BEGIN
 IF lower(btrim(NEW.member_name)) IS DISTINCT FROM lower(btrim(OLD.member_name)) THEN
  RAISE EXCEPTION 'Your debate record is already linked. Contact the society administrator to correct it.';
 END IF;
 RETURN NEW;
END $$;
REVOKE ALL ON FUNCTION public.dk_keep_member_identity() FROM PUBLIC;
DROP TRIGGER IF EXISTS dk_member_identity_immutable ON public.dk_profiles;
CREATE TRIGGER dk_member_identity_immutable BEFORE UPDATE ON public.dk_profiles
FOR EACH ROW EXECUTE FUNCTION public.dk_keep_member_identity();

-- Only public roster names are exposed. No user IDs, email addresses, or profile
-- customisation data leave the owner-only table through this narrow function.
CREATE OR REPLACE FUNCTION public.dk_claimed_members()
RETURNS TABLE(member_name text) LANGUAGE sql STABLE SECURITY DEFINER SET search_path = '' AS $$
 SELECT p.member_name FROM public.dk_profiles p ORDER BY lower(p.member_name)
$$;
REVOKE ALL ON FUNCTION public.dk_claimed_members() FROM PUBLIC, anon;
GRANT EXECUTE ON FUNCTION public.dk_claimed_members() TO authenticated;
NOTIFY pgrst, 'reload schema';
