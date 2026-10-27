-- Add a room-free API. Existing records and the original API remain intact.
CREATE OR REPLACE FUNCTION public.dk_cross_submit_simple(payload jsonb) RETURNS uuid
LANGUAGE plpgsql SECURITY DEFINER SET search_path='' AS $$
DECLARE actor text:=public.dk_cross_actor(); game uuid; matches integer; known integer;
 candidate jsonb:=payload; incoming jsonb:=payload->'participants'; slot integer; mapped integer;
 team_map jsonb:='{}'; room text:='Cross mock';
BEGIN
 -- Serialise room-free matching, not just the eventual insert.
 PERFORM pg_advisory_xact_lock(hashtextextended(jsonb_build_array(payload->>'debated_on',payload->>'format',
   public.dk_cross_key(payload->>'opponent'),public.dk_cross_key(payload->>'motion'))::text,0));
 SELECT count(*) INTO matches FROM public.dk_cross_debates d
  WHERE d.debated_on=(payload->>'debated_on')::date AND d.format=payload->>'format'
   AND public.dk_cross_key(d.opponent)=public.dk_cross_key(payload->>'opponent')
   AND public.dk_cross_key(d.motion)=public.dk_cross_key(payload->>'motion');
 IF matches>1 THEN
  RAISE EXCEPTION 'Multiple older debates match these details. Contact the society administrator; no records were changed';
 ELSIF matches=1 THEN
  SELECT d.id,d.round_label INTO game,room FROM public.dk_cross_debates d
   WHERE d.debated_on=(payload->>'debated_on')::date AND d.format=payload->>'format'
    AND public.dk_cross_key(d.opponent)=public.dk_cross_key(payload->>'opponent')
    AND public.dk_cross_key(d.motion)=public.dk_cross_key(payload->>'motion');
  -- Independently logging a teammate must not move them to a different team.
  IF jsonb_typeof(incoming)='array' THEN
   FOR slot IN SELECT DISTINCT (p->>'team_slot')::integer FROM jsonb_array_elements(incoming) p WHERE p->>'role'='Speaker' LOOP
    SELECT count(DISTINCT old.team_slot),max(old.team_slot) INTO known,mapped
     FROM public.dk_cross_participants old JOIN jsonb_array_elements(incoming) p ON p->>'member_key'=old.member_key
     WHERE old.debate_id=game AND old.role='Speaker' AND p->>'role'='Speaker' AND (p->>'team_slot')::integer=slot;
    IF known>1 THEN RAISE EXCEPTION 'These speakers are already recorded on separate teams'; END IF;
    team_map:=team_map||jsonb_build_object(slot::text,CASE WHEN known=1 THEN mapped ELSE slot END);
   END LOOP;
   IF (SELECT count(*) FROM jsonb_each(team_map))<>(SELECT count(DISTINCT value) FROM jsonb_each(team_map)) THEN
    RAISE EXCEPTION 'Team selections conflict with the existing debate'; END IF;
   SELECT jsonb_agg(CASE WHEN p->>'role'='Speaker' THEN p||jsonb_build_object('team_slot',(team_map->>(p->>'team_slot'))::integer) ELSE p END)
    INTO incoming FROM jsonb_array_elements(incoming) p;
   candidate:=candidate||jsonb_build_object('participants',incoming);
  END IF;
 END IF;
 candidate:=candidate||jsonb_build_object('debate_id',game,'round_label',room);
 RETURN public.dk_cross_submit(candidate);
END $$;
REVOKE ALL ON FUNCTION public.dk_cross_submit_simple(jsonb) FROM PUBLIC,anon,authenticated;
GRANT EXECUTE ON FUNCTION public.dk_cross_submit_simple(jsonb) TO authenticated;
NOTIFY pgrst,'reload schema';
