-- Preserve all existing debates. Only relax optional metadata and replace matching logic.
ALTER TABLE public.dk_cross_debates DROP CONSTRAINT IF EXISTS dk_cross_debates_opponent_check;
ALTER TABLE public.dk_cross_debates ADD CONSTRAINT dk_cross_debates_opponent_check CHECK(char_length(opponent) BETWEEN 0 AND 160);
CREATE INDEX IF NOT EXISTS dk_cross_debates_date_format_idx ON public.dk_cross_debates(debated_on,format);

CREATE OR REPLACE FUNCTION public.dk_cross_match_text(value text) RETURNS text
LANGUAGE plpgsql IMMUTABLE SET search_path='' AS $$
DECLARE result text:=lower(coalesce(value,''));
BEGIN
 result:=replace(result,'’',chr(39));
 result:=replace(replace(result,'can''t','can not'),'won''t','will not');
 result:=regexp_replace(result,'n''t\M',' not','g');
 result:=public.dk_cross_key(regexp_replace(result,'[^[:alnum:]]+',' ','g'));
 result:=regexp_replace(result,'\mcannot\M','can not','g');
 result:=regexp_replace(result,'^thw( |$)','this house would ');
 result:=regexp_replace(result,'^thbt( |$)','this house believes that ');
 result:=regexp_replace(result,'^ths( |$)','this house supports ');
 result:=regexp_replace(result,'^tho( |$)','this house opposes ');
 result:=regexp_replace(result,'^thr( |$)','this house regrets ');
 result:=regexp_replace(result,'^this house believes that( |$)','this house believes ');
 RETURN public.dk_cross_key(result);
END $$;

CREATE OR REPLACE FUNCTION public.dk_cross_word_close(a text,b text) RETURNS boolean
LANGUAGE plpgsql IMMUTABLE SET search_path='' AS $$
DECLARE la integer:=length(a);lb integer:=length(b);pos integer;diff integer[]:='{}';longer text;shorter text;
BEGIN
 IF a=b THEN RETURN true; END IF;
 IF least(la,lb)<4 OR abs(la-lb)>1 THEN RETURN false; END IF;
 IF la=lb THEN
  FOR pos IN 1..la LOOP IF substr(a,pos,1)<>substr(b,pos,1) THEN diff:=array_append(diff,pos); END IF; END LOOP;
  RETURN cardinality(diff)=1 OR (cardinality(diff)=2 AND diff[2]=diff[1]+1
   AND substr(a,diff[1],1)=substr(b,diff[2],1) AND substr(a,diff[2],1)=substr(b,diff[1],1));
 END IF;
 longer:=CASE WHEN la>lb THEN a ELSE b END;shorter:=CASE WHEN la>lb THEN b ELSE a END;
 pos:=1;WHILE pos<=length(shorter) AND substr(longer,pos,1)=substr(shorter,pos,1) LOOP pos:=pos+1;END LOOP;
 RETURN substr(longer,pos+1)=substr(shorter,pos);
END $$;

CREATE OR REPLACE FUNCTION public.dk_cross_motion_match(a text,b text) RETURNS numeric
LANGUAGE plpgsql IMMUTABLE SET search_path='' AS $$
DECLARE x text:=public.dk_cross_match_text(a);y text:=public.dk_cross_match_text(b);aa text[];bb text[];ga text[];gb text[];pos integer;score numeric;changed integer:=0;
BEGIN
 IF x='' OR y='' THEN RETURN 0; END IF;
 IF x=y THEN RETURN 1; END IF;
 aa:=string_to_array(x,' ');bb:=string_to_array(y,' ');
 -- A high character similarity must never erase negation, a number or stance.
 SELECT array_agg(w ORDER BY w) INTO ga FROM unnest(aa) w WHERE w IN
  ('not','no','never','without','cannot','supports','opposes','regrets','ban','bans','prohibit','criminalise','criminalize','decriminalise','decriminalize','legalise','legalize','abolish') OR w~'^[0-9]+$';
 SELECT array_agg(w ORDER BY w) INTO gb FROM unnest(bb) w WHERE w IN
  ('not','no','never','without','cannot','supports','opposes','regrets','ban','bans','prohibit','criminalise','criminalize','decriminalise','decriminalize','legalise','legalize','abolish') OR w~'^[0-9]+$';
 IF ga IS DISTINCT FROM gb THEN RETURN 0; END IF;
 IF replace(x,' ','')=replace(y,' ','') THEN RETURN 1; END IF;
 IF cardinality(aa)<>cardinality(bb) THEN RETURN 0; END IF;
 FOR pos IN 1..cardinality(aa) LOOP
  IF NOT public.dk_cross_word_close(aa[pos],bb[pos]) THEN RETURN 0; END IF;
  IF aa[pos]<>bb[pos] THEN changed:=changed+1;END IF;
 END LOOP;
 -- Dice similarity, after checking that differences are only spelling-like edits.
 WITH ax AS (SELECT DISTINCT substr('  '||x||' ',i,3) t FROM generate_series(1,length(x)+1) i),
 bx AS (SELECT DISTINCT substr('  '||y||' ',i,3) t FROM generate_series(1,length(y)+1) i)
 SELECT 2.0*(SELECT count(*) FROM ax JOIN bx USING(t))/greatest(1,(SELECT count(*) FROM ax)+(SELECT count(*) FROM bx)) INTO score;
 IF changed>2 THEN RETURN least(0.89,greatest(0.78,score));END IF;
 RETURN greatest(0.78,score);
END $$;

CREATE OR REPLACE FUNCTION public.dk_cross_uni_text(value text) RETURNS text
LANGUAGE plpgsql IMMUTABLE SET search_path='' AS $$
DECLARE result text:=public.dk_cross_match_text(value);
BEGIN
 result:=regexp_replace(result,'\mindian (institute|inst) (of )?(technology|tech)\M','iit','g');
 result:=regexp_replace(result,'\mnational (institute|inst) (of )?(technology|tech)\M','nit','g');
 result:=regexp_replace(result,'\mindian (institute|inst) (of )?management\M','iim','g');
 result:=regexp_replace(result,'\m(univ|uni)\M','university','g');
 result:=regexp_replace(result,'\mcoll\M','college','g');
 result:=regexp_replace(result,'\msoc\M','society','g');
 result:=regexp_replace(result,'\m(debsoc|debate society|debating society)\M','','g');
 result:=regexp_replace(public.dk_cross_key(result),'^university (of )?(.+)$','\2 university');
 RETURN public.dk_cross_key(result);
END $$;
CREATE OR REPLACE FUNCTION public.dk_cross_uni_key(value text) RETURNS text
LANGUAGE plpgsql IMMUTABLE SET search_path='' AS $$
DECLARE words text[]:=string_to_array(public.dk_cross_uni_text(value),' ');result text:='';w text;pos integer:=1;
BEGIN
 IF cardinality(words)=1 THEN RETURN words[1]; END IF;
 IF words[1] IN ('iit','nit','iim') THEN result:=words[1];pos:=2; END IF;
 WHILE pos<=cardinality(words) LOOP w:=words[pos];IF w NOT IN ('of','the','and') THEN result:=result||left(w,1);END IF;pos:=pos+1;END LOOP;
 RETURN result;
END $$;
CREATE OR REPLACE FUNCTION public.dk_cross_uni_match(a text,b text) RETURNS numeric
LANGUAGE plpgsql IMMUTABLE SET search_path='' AS $$
DECLARE aa text[];bb text[];x text;y text;ka text;kb text;best numeric;result numeric:=1;pair_score numeric;pass integer;
BEGIN
 SELECT array_agg(DISTINCT v) INTO aa FROM (SELECT public.dk_cross_uni_text(p) v FROM regexp_split_to_table(coalesce(a,''),'[,;/|&+\n]|\mand\M') p) q WHERE v<>'';
 SELECT array_agg(DISTINCT v) INTO bb FROM (SELECT public.dk_cross_uni_text(p) v FROM regexp_split_to_table(coalesce(b,''),'[,;/|&+\n]|\mand\M') p) q WHERE v<>'';
 IF aa IS NULL OR bb IS NULL THEN RETURN NULL; END IF;
 FOR pass IN 1..2 LOOP
  FOREACH x IN ARRAY CASE WHEN pass=1 THEN aa ELSE bb END LOOP
   best:=0;ka:=public.dk_cross_uni_key(x);
   FOREACH y IN ARRAY CASE WHEN pass=1 THEN bb ELSE aa END LOOP
    kb:=public.dk_cross_uni_key(y);
    IF x=y OR replace(x,' ','')=replace(y,' ','') OR
      (ka=kb AND (replace(x,' ','')=ka OR replace(y,' ','')=kb)) THEN pair_score:=1;
    ELSE pair_score:=public.dk_cross_motion_match(x,y);END IF;
    best:=greatest(best,pair_score);
   END LOOP;
   result:=least(result,best);
  END LOOP;
 END LOOP;
 RETURN result;
END $$;

CREATE OR REPLACE FUNCTION public.dk_cross_submit_simple(payload jsonb) RETURNS uuid
LANGUAGE plpgsql SECURITY DEFINER SET search_path='' AS $$
DECLARE actor text:=public.dk_cross_actor();day date:=(payload->>'debated_on')::date;fmt text:=payload->>'format';
 against text:=btrim(coalesce(payload->>'opponent',''));motion_text text:=btrim(payload->>'motion');
 candidate jsonb:=payload;incoming jsonb:=payload->'participants';game uuid;existing public.dk_cross_debates%ROWTYPE;
 row_data public.dk_cross_debates%ROWTYPE;motion_score numeric;uni_score numeric;near_count integer:=0;sure_count integer:=0;
 team_map jsonb:='{}';unknown_slots integer[]:='{}';used integer[]:='{}';slot integer;mapped integer;known integer;cap integer;group_size integer;speaker_cap integer;
BEGIN
 IF day IS NULL OR day>(now() AT TIME ZONE 'Asia/Kolkata')::date OR fmt IS NULL OR fmt NOT IN ('AP','BP')
  OR coalesce(length(motion_text),0) NOT BETWEEN 1 AND 2000 OR length(against)>160 THEN
  RAISE EXCEPTION 'Enter a valid date, AP/BP format and motion';END IF;
 IF jsonb_typeof(incoming) IS DISTINCT FROM 'array' OR jsonb_array_length(incoming)<1 THEN RAISE EXCEPTION 'Select at least yourself';END IF;
 cap:=CASE WHEN fmt='AP' THEN 2 ELSE 3 END;
 speaker_cap:=CASE WHEN fmt='AP' THEN 3 ELSE 2 END;
 -- All modern submissions on a date/format share this lock, including typo variants.
 PERFORM pg_advisory_xact_lock(hashtextextended(jsonb_build_array(day::text,fmt)::text,0));
 FOR row_data IN SELECT * FROM public.dk_cross_debates d WHERE d.debated_on=day AND d.format=fmt LOOP
  motion_score:=public.dk_cross_motion_match(row_data.motion,motion_text);
  uni_score:=public.dk_cross_uni_match(row_data.opponent,against);
  IF motion_score>=0.78 AND (uni_score IS NULL OR uni_score>=0.78) THEN
   near_count:=near_count+1;
   IF motion_score>=0.90 THEN sure_count:=sure_count+1;existing:=row_data;END IF;
  END IF;
 END LOOP;
 IF near_count>0 AND (near_count<>1 OR sure_count<>1) THEN
  RAISE EXCEPTION 'Similar debates already exist on this date. Check the recorded motion and opponents before retrying; no records were changed';
 END IF;
 IF sure_count=1 THEN
  game:=existing.id;
  -- Fill unknown opponents only. Never replace existing named opponents or motion text.
  IF existing.opponent='' AND against<>'' THEN
   UPDATE public.dk_cross_debates SET opponent=against,
    fingerprint=encode(sha256(convert_to(jsonb_build_array(day::text,fmt,public.dk_cross_key(against),public.dk_cross_key(existing.round_label),public.dk_cross_key(existing.motion))::text,'UTF8')),'hex') WHERE id=game;
   existing.opponent:=against;
  END IF;
  SELECT coalesce(array_agg(DISTINCT team_slot),'{}') INTO used FROM public.dk_cross_participants WHERE debate_id=game AND role='Speaker' AND NOT withdrawn;
 END IF;
 -- Resolve existing teams by shared members, not each account's local Team 1 label.
 FOR slot IN SELECT DISTINCT (p->>'team_slot')::integer FROM jsonb_array_elements(incoming) p WHERE p->>'role'='Speaker' ORDER BY 1 LOOP
  IF slot IS NULL OR slot<1 OR slot>cap THEN RAISE EXCEPTION 'Too many teams for this format';END IF;
  SELECT count(DISTINCT old.team_slot),max(old.team_slot) INTO known,mapped
   FROM public.dk_cross_participants old JOIN jsonb_array_elements(incoming) p ON p->>'member_key'=old.member_key
   WHERE old.debate_id=game AND old.role='Speaker' AND p->>'role'='Speaker' AND (p->>'team_slot')::integer=slot;
  IF known>1 THEN RAISE EXCEPTION 'These speakers are already recorded on separate teams';END IF;
  IF known=1 THEN team_map:=team_map||jsonb_build_object(slot::text,mapped);used:=array_append(used,mapped);
  ELSE unknown_slots:=array_append(unknown_slots,slot);END IF;
 END LOOP;
 IF (SELECT count(*) FROM jsonb_each(team_map))<>(SELECT count(DISTINCT value) FROM jsonb_each(team_map)) THEN RAISE EXCEPTION 'These groups belong to the same recorded team';END IF;
 FOREACH slot IN ARRAY unknown_slots LOOP
  mapped:=NULL;
  SELECT count(*) INTO group_size FROM jsonb_array_elements(incoming) p WHERE p->>'role'='Speaker' AND (p->>'team_slot')::integer=slot;
  IF game IS NOT NULL AND slot=ANY(used) AND EXISTS(SELECT 1 FROM public.dk_cross_participants p
    WHERE p.debate_id=game AND p.role='Speaker' AND NOT p.withdrawn GROUP BY p.team_slot HAVING count(*)+group_size<=speaker_cap) THEN
   RAISE EXCEPTION 'Include a recorded teammate to identify an existing team, or use an unused team number for a separate team; no records were changed';END IF;
  IF NOT slot=ANY(used) THEN mapped:=slot;
  ELSE SELECT n INTO mapped FROM generate_series(1,cap) n WHERE NOT n=ANY(used) ORDER BY n LIMIT 1;END IF;
  IF mapped IS NULL THEN RAISE EXCEPTION 'All teams are already recorded. Include an existing teammate to link your entry; no duplicate was created';END IF;
  team_map:=team_map||jsonb_build_object(slot::text,mapped);used:=array_append(used,mapped);
 END LOOP;
 SELECT jsonb_agg(CASE WHEN p->>'role'='Speaker' THEN p||jsonb_build_object('team_slot',(team_map->>(p->>'team_slot'))::integer) ELSE p END)
  INTO incoming FROM jsonb_array_elements(incoming) p;
 candidate:=candidate||jsonb_build_object('participants',incoming,'debate_id',game,'round_label',CASE WHEN game IS NULL THEN 'Cross mock' ELSE existing.round_label END,
  'opponent',CASE WHEN game IS NULL THEN against ELSE existing.opponent END,'motion',CASE WHEN game IS NULL THEN motion_text ELSE existing.motion END);
 RETURN public.dk_cross_submit(candidate);
END $$;
REVOKE ALL ON FUNCTION public.dk_cross_match_text(text),public.dk_cross_word_close(text,text),public.dk_cross_motion_match(text,text),public.dk_cross_uni_text(text),public.dk_cross_uni_key(text),public.dk_cross_uni_match(text,text) FROM PUBLIC,anon,authenticated;
REVOKE ALL ON FUNCTION public.dk_cross_submit_simple(jsonb) FROM PUBLIC,anon,authenticated;
GRANT EXECUTE ON FUNCTION public.dk_cross_submit_simple(jsonb) TO authenticated;
NOTIFY pgrst,'reload schema';
