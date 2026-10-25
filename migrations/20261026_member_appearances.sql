-- Additive read-only projection. No profile rows are changed.
-- Character projection continues to enforce its existing field allowlist.
CREATE OR REPLACE FUNCTION public.dk_member_appearances()
RETURNS TABLE (member_name text, "character" jsonb, theme text)
LANGUAGE sql STABLE SECURITY DEFINER SET search_path = ''
AS $$
 SELECT c.member_name, c."character",
  CASE WHEN p.avatar_config->>'theme' IN ('sage','rose','lilac','sand','sky','peach','mint')
   THEN p.avatar_config->>'theme' ELSE 'sage' END
 FROM public.dk_member_characters() AS c
 JOIN public.dk_profiles AS p ON p.member_name=c.member_name
 ORDER BY c.member_name
$$;
REVOKE ALL ON FUNCTION public.dk_member_appearances() FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.dk_member_appearances() TO anon, authenticated;
NOTIFY pgrst, 'reload schema';
