-- Public avatar projection only. Existing tables, rows and owner policies stay intact.
CREATE OR REPLACE FUNCTION public.dk_member_characters()
RETURNS TABLE (member_name text, "character" jsonb)
LANGUAGE sql STABLE SECURITY DEFINER SET search_path = ''
AS $$
 SELECT p.member_name, (
  SELECT pg_catalog.jsonb_object_agg(item.key, item.value)
  FROM pg_catalog.jsonb_each(p.avatar_config->'character') AS item
  WHERE item.key IN ('body','hair','back','bangs','bonus','hairColor','eyes','lashes',
   'brows','mouth','beard','top','bottom','dress','shoes','gloves','background',
   'glasses','earrings','necklace','pendant','wrist','ring','belt','nails','makeup','tattoo')
   AND pg_catalog.jsonb_typeof(item.value)='string'
 ) AS "character"
 FROM public.dk_profiles AS p
 WHERE pg_catalog.jsonb_typeof(p.avatar_config->'character')='object'
 ORDER BY p.member_name
$$;
REVOKE ALL ON FUNCTION public.dk_member_characters() FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.dk_member_characters() TO anon, authenticated;
NOTIFY pgrst, 'reload schema';
