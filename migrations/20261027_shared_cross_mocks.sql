-- Shared self-reported debates. Additive: no Tabbycat or legacy entry rows change.
CREATE OR REPLACE FUNCTION public.dk_cross_key(value text) RETURNS text
LANGUAGE sql IMMUTABLE SET search_path='' AS $$
 SELECT pg_catalog.lower(pg_catalog.regexp_replace(pg_catalog.btrim(pg_catalog.replace(value,chr(160),' ')),'\s+',' ','g'))
$$;
CREATE TABLE IF NOT EXISTS public.dk_cross_roster (
 member_key text PRIMARY KEY, member_name text NOT NULL, year text NOT NULL,
 graduation_year text NOT NULL DEFAULT '', active boolean NOT NULL DEFAULT true
);
CREATE TABLE IF NOT EXISTS public.dk_cross_debates (
 id uuid PRIMARY KEY DEFAULT gen_random_uuid(), debated_on date NOT NULL,
 opponent text NOT NULL, format text NOT NULL CHECK(format IN ('AP','BP')),
 round_label text NOT NULL, motion text NOT NULL, info_slide text NOT NULL DEFAULT '',
 fingerprint text NOT NULL UNIQUE, created_by uuid REFERENCES auth.users(id) ON DELETE SET NULL,
 created_at timestamptz NOT NULL DEFAULT now(),
 CHECK(char_length(motion) BETWEEN 1 AND 2000), CHECK(char_length(info_slide)<=5000),
 CHECK(char_length(opponent) BETWEEN 1 AND 160), CHECK(char_length(round_label) BETWEEN 1 AND 80)
);
CREATE TABLE IF NOT EXISTS public.dk_cross_participants (
 debate_id uuid NOT NULL REFERENCES public.dk_cross_debates(id),
 member_key text NOT NULL REFERENCES public.dk_cross_roster(member_key),
 role text NOT NULL CHECK(role IN ('Speaker','Adjudicator')), team_slot integer,
 speaker_score numeric, adj_score numeric, confirmed boolean NOT NULL DEFAULT false,
 withdrawn boolean NOT NULL DEFAULT false, submitted_by uuid REFERENCES auth.users(id) ON DELETE SET NULL,
 PRIMARY KEY(debate_id,member_key),
 CHECK((role='Speaker' AND team_slot IS NOT NULL AND team_slot BETWEEN 1 AND 3 AND adj_score IS NULL)
    OR (role='Adjudicator' AND team_slot IS NULL AND speaker_score IS NULL)),
 CHECK(speaker_score IS NULL OR (speaker_score BETWEEN 60 AND 100 AND mod(speaker_score*2,1)=0)),
 CHECK(adj_score IS NULL OR (adj_score BETWEEN 1 AND 10 AND mod(adj_score*2,1)=0))
);
ALTER TABLE public.dk_cross_roster ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.dk_cross_debates ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.dk_cross_participants ENABLE ROW LEVEL SECURITY;
REVOKE ALL ON public.dk_cross_roster,public.dk_cross_debates,public.dk_cross_participants FROM anon,authenticated;

CREATE OR REPLACE FUNCTION public.dk_cross_roster_feed()
RETURNS TABLE(member_key text,member_name text,year text,graduation_year text)
LANGUAGE sql STABLE SECURITY DEFINER SET search_path='' AS $$
 SELECT r.member_key,r.member_name,r.year,r.graduation_year FROM public.dk_cross_roster r WHERE r.active
 ORDER BY CASE WHEN r.year ~ '^[0-9]+$' THEN r.year::integer ELSE 99 END,r.member_name
$$;

CREATE OR REPLACE FUNCTION public.dk_cross_actor() RETURNS text
LANGUAGE plpgsql STABLE SECURITY DEFINER SET search_path='' AS $$
DECLARE actor text;
BEGIN
 IF NOT EXISTS(SELECT 1 FROM auth.users u JOIN auth.identities i ON i.user_id=u.id
   WHERE u.id=auth.uid() AND u.email_confirmed_at IS NOT NULL AND i.provider='google') THEN
  RAISE EXCEPTION 'A verified Google sign-in is required'; END IF;
 SELECT r.member_key INTO actor FROM public.dk_profiles p JOIN public.dk_cross_roster r
  ON r.member_key=public.dk_cross_key(p.member_name) WHERE p.user_id=auth.uid() AND r.active;
 IF actor IS NULL THEN RAISE EXCEPTION 'Link a current society record before logging a cross mock'; END IF;
 RETURN actor;
END $$;

CREATE OR REPLACE FUNCTION public.dk_cross_submit(payload jsonb) RETURNS uuid
LANGUAGE plpgsql SECURITY DEFINER SET search_path='' AS $$
DECLARE actor text:=public.dk_cross_actor(); game uuid; day date; fmt text; against text; motion_text text;
 room text; slide text; ident text; item jsonb; member text; participant_role text; slot integer;
 sp numeric; adj numeric; old public.dk_cross_participants%ROWTYPE; cap integer; total integer;
BEGIN
 day:=(payload->>'debated_on')::date;fmt:=payload->>'format';against:=btrim(coalesce(payload->>'opponent',''));
 motion_text:=btrim(payload->>'motion');room:=btrim(payload->>'round_label');slide:=btrim(coalesce(payload->>'info_slide',''));
 IF day IS NULL OR day>(now() AT TIME ZONE 'Asia/Kolkata')::date OR fmt IS NULL OR fmt NOT IN ('AP','BP')
  OR coalesce(length(motion_text),0)=0 OR coalesce(length(room),0)=0 THEN
  RAISE EXCEPTION 'Date, format, round/room and motion are required'; END IF;
 IF jsonb_typeof(payload->'participants') IS DISTINCT FROM 'array' OR jsonb_array_length(payload->'participants')<1 THEN
  RAISE EXCEPTION 'Select at least yourself'; END IF;
 IF NOT EXISTS(SELECT 1 FROM jsonb_array_elements(payload->'participants') p WHERE p->>'member_key'=actor) THEN
  RAISE EXCEPTION 'Add yourself as a speaker or adjudicator'; END IF;
 IF (SELECT count(*) FROM jsonb_array_elements(payload->'participants'))<>(SELECT count(DISTINCT p->>'member_key') FROM jsonb_array_elements(payload->'participants') p) THEN
  RAISE EXCEPTION 'Each person can appear only once in a debate'; END IF;
 ident:=encode(sha256(convert_to(jsonb_build_array(day::text,fmt,public.dk_cross_key(against),public.dk_cross_key(room),public.dk_cross_key(motion_text))::text,'UTF8')),'hex');
 IF nullif(payload->>'debate_id','') IS NOT NULL THEN
  SELECT id INTO game FROM public.dk_cross_debates WHERE id=(payload->>'debate_id')::uuid AND fingerprint=ident;
  IF game IS NULL THEN RAISE EXCEPTION 'The selected debate changed; reopen it before saving'; END IF;
 ELSE
  INSERT INTO public.dk_cross_debates(debated_on,opponent,format,round_label,motion,info_slide,fingerprint,created_by)
   VALUES(day,against,fmt,room,motion_text,slide,ident,auth.uid()) ON CONFLICT(fingerprint) DO NOTHING RETURNING id INTO game;
  IF game IS NULL THEN SELECT id INTO game FROM public.dk_cross_debates WHERE fingerprint=ident; END IF;
 END IF;
 -- Serialize merges: duplicate and simultaneous team submissions cannot inflate counts/caps.
 PERFORM 1 FROM public.dk_cross_debates WHERE id=game FOR UPDATE;
 IF slide<>'' AND (SELECT info_slide FROM public.dk_cross_debates WHERE id=game) NOT IN ('',slide) THEN
  RAISE EXCEPTION 'Conflicting infoslides: review the existing debate'; END IF;
 UPDATE public.dk_cross_debates SET info_slide=slide WHERE id=game AND info_slide='' AND slide<>'';
 FOR item IN SELECT * FROM jsonb_array_elements(payload->'participants') LOOP
  member:=item->>'member_key';participant_role:=item->>'role';slot:=nullif(item->>'team_slot','')::integer;
  sp:=nullif(item->>'speaker_score','')::numeric;adj:=nullif(item->>'adj_score','')::numeric;
  IF NOT EXISTS(SELECT 1 FROM public.dk_cross_roster WHERE member_key=member AND active) THEN RAISE EXCEPTION 'Select a registered society name'; END IF;
  IF participant_role IS NULL OR participant_role NOT IN ('Speaker','Adjudicator') THEN RAISE EXCEPTION 'Select a valid role'; END IF;
  IF participant_role='Speaker' AND (slot IS NULL OR slot<1 OR slot>CASE WHEN fmt='AP' THEN 2 ELSE 3 END) THEN
   RAISE EXCEPTION 'Too many teams for this format'; END IF;
  SELECT * INTO old FROM public.dk_cross_participants WHERE debate_id=game AND member_key=member;
  IF FOUND THEN
   IF old.role<>participant_role OR old.team_slot IS DISTINCT FROM slot THEN RAISE EXCEPTION 'A selected person is already on another team/role'; END IF;
   IF (old.speaker_score IS NOT NULL AND sp IS NOT NULL AND old.speaker_score<>sp)
    OR (old.adj_score IS NOT NULL AND adj IS NOT NULL AND old.adj_score<>adj) THEN
    RAISE EXCEPTION 'Conflicting scores: review the existing entry rather than overwrite it'; END IF;
   UPDATE public.dk_cross_participants SET speaker_score=coalesce(speaker_score,sp),adj_score=coalesce(adj_score,adj),
    confirmed=confirmed OR member=actor,withdrawn=CASE WHEN member=actor THEN false ELSE withdrawn END
    WHERE debate_id=game AND member_key=member;
  ELSE
   INSERT INTO public.dk_cross_participants(debate_id,member_key,role,team_slot,speaker_score,adj_score,confirmed,submitted_by)
    VALUES(game,member,participant_role,slot,sp,adj,member=actor,auth.uid());
  END IF;
 END LOOP;
 cap:=CASE WHEN fmt='AP' THEN 3 ELSE 2 END;
 SELECT max(n) INTO total FROM (SELECT count(*) n FROM public.dk_cross_participants WHERE debate_id=game AND role='Speaker' AND NOT withdrawn GROUP BY team_slot) counts;
 IF total>cap THEN RAISE EXCEPTION 'Too many speakers in a team'; END IF;
 RETURN game;
END $$;

CREATE OR REPLACE FUNCTION public.dk_cross_confirm(game uuid) RETURNS void
LANGUAGE plpgsql SECURITY DEFINER SET search_path='' AS $$
DECLARE actor text:=public.dk_cross_actor(); cap integer; slot integer;
BEGIN
 PERFORM 1 FROM public.dk_cross_debates WHERE id=game FOR UPDATE;
 SELECT CASE WHEN d.format='AP' THEN 3 ELSE 2 END INTO cap FROM public.dk_cross_debates d WHERE d.id=game;
 SELECT p.team_slot INTO slot FROM public.dk_cross_participants p WHERE p.debate_id=game AND p.member_key=actor;
 IF slot IS NOT NULL AND (SELECT count(*) FROM public.dk_cross_participants p WHERE p.debate_id=game AND p.team_slot=slot AND p.member_key<>actor AND NOT p.withdrawn)>=cap THEN
  RAISE EXCEPTION 'This team is already full'; END IF;
 UPDATE public.dk_cross_participants SET confirmed=true,withdrawn=false WHERE debate_id=game AND member_key=actor;
 IF NOT FOUND THEN RAISE EXCEPTION 'You are not listed in this debate'; END IF;
END $$;
CREATE OR REPLACE FUNCTION public.dk_cross_retract(game uuid) RETURNS void
LANGUAGE plpgsql SECURITY DEFINER SET search_path='' AS $$
DECLARE actor text:=public.dk_cross_actor();
BEGIN
 PERFORM 1 FROM public.dk_cross_debates WHERE id=game FOR UPDATE;
 UPDATE public.dk_cross_participants SET withdrawn=true WHERE debate_id=game AND member_key=actor;
END $$;
CREATE OR REPLACE FUNCTION public.dk_cross_debates_feed()
RETURNS TABLE(id uuid,debated_on date,opponent text,format text,round_label text,motion text,info_slide text,participants jsonb)
LANGUAGE sql STABLE SECURITY DEFINER SET search_path='' AS $$
 SELECT d.id,d.debated_on,d.opponent,d.format,d.round_label,d.motion,d.info_slide,
  jsonb_agg(jsonb_build_object('member_key',p.member_key,'member_name',r.member_name,'year',r.year,
   'role',p.role,'team_slot',p.team_slot,'speaker_score',p.speaker_score,'adj_score',p.adj_score,'confirmed',p.confirmed)
   ORDER BY p.role,p.team_slot,r.member_name)
 FROM public.dk_cross_debates d JOIN public.dk_cross_participants p ON p.debate_id=d.id AND NOT p.withdrawn
 JOIN public.dk_cross_roster r ON r.member_key=p.member_key
 GROUP BY d.id ORDER BY d.debated_on DESC,d.created_at DESC
$$;
-- Supabase can grant anon/authenticated EXECUTE through default privileges,
-- independently of PUBLIC. Clear all three before granting the exact API surface.
REVOKE ALL ON FUNCTION public.dk_cross_actor(),public.dk_cross_key(text) FROM PUBLIC,anon,authenticated;
REVOKE ALL ON FUNCTION public.dk_cross_submit(jsonb),public.dk_cross_confirm(uuid),public.dk_cross_retract(uuid),public.dk_cross_roster_feed(),public.dk_cross_debates_feed() FROM PUBLIC,anon,authenticated;
GRANT EXECUTE ON FUNCTION public.dk_cross_submit(jsonb),public.dk_cross_confirm(uuid),public.dk_cross_retract(uuid) TO authenticated;
GRANT EXECUTE ON FUNCTION public.dk_cross_roster_feed(),public.dk_cross_debates_feed() TO anon,authenticated;
NOTIFY pgrst,'reload schema';
