-- Additive read-only projection. Existing profile rows and earlier APIs are unchanged.
CREATE OR REPLACE FUNCTION public.dk_member_appearances_v2()
RETURNS TABLE (member_name text, "character" jsonb, theme text, bio text)
LANGUAGE sql STABLE SECURITY DEFINER SET search_path = ''
AS $$
 SELECT p.member_name, c."character",
  CASE WHEN p.avatar_config->>'theme' IN ('sage','rose','lilac','sand','sky','peach','mint')
   THEN p.avatar_config->>'theme' ELSE 'sage' END,
  CASE WHEN pg_catalog.jsonb_typeof(p.avatar_config->'bio')='string'
   THEN pg_catalog.left(pg_catalog.btrim(p.avatar_config->>'bio'),160) ELSE '' END
 FROM public.dk_profiles AS p
 LEFT JOIN public.dk_member_characters() AS c ON p.member_name=c.member_name
 ORDER BY p.member_name
$$;
REVOKE ALL ON FUNCTION public.dk_member_appearances_v2() FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.dk_member_appearances_v2() TO anon, authenticated;
NOTIFY pgrst, 'reload schema';
