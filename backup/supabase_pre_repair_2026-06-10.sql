-- Supabase public schema/data backup before repair
BEGIN;
SET search_path = public;

CREATE TABLE IF NOT EXISTS "actionlog_actionlogentry" (
    "id" integer NOT NULL,
    "type" VARCHAR(10) NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    "ip_address" inet,
    "object_id" integer,
    "content_type_id" integer,
    "round_id" integer,
    "tournament_id" integer,
    "user_id" integer,
    "agent" VARCHAR(1) NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (38, 'rd.comp', '2026-06-04T17:10:53.921847+00:00'::timestamptz, '103.252.25.60', 1, 53, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (39, 'fb.subm', '2026-06-04T17:12:30.905707+00:00'::timestamptz, '103.252.25.60', 1, 18, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (40, 'si.team', '2026-06-05T16:47:08.832943+00:00'::timestamptz, '103.252.25.60', 2, 54, NULL, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (41, 'si.team', '2026-06-05T16:47:41.738779+00:00'::timestamptz, '110.226.226.242', 2, 54, NULL, 2, 8, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (42, 'si.team', '2026-06-05T16:47:43.453617+00:00'::timestamptz, '152.59.79.176', 2, 54, NULL, 2, 15, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (43, 'si.team', '2026-06-05T16:48:17.967226+00:00'::timestamptz, '104.28.157.140', 2, 54, NULL, 2, 10, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (44, 'si.adju', '2026-06-05T16:50:22.347476+00:00'::timestamptz, '152.59.79.176', 2, 54, NULL, 2, 15, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (45, 'si.adju', '2026-06-05T16:50:22.759145+00:00'::timestamptz, '104.28.157.140', 2, 54, NULL, 2, 10, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (46, 'si.adju', '2026-06-05T16:50:24.435958+00:00'::timestamptz, '103.252.25.60', 2, 54, NULL, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (47, 'si.adju', '2026-06-05T16:50:26.149218+00:00'::timestamptz, '49.238.35.190', 2, 54, NULL, 2, 16, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (48, 'si.venu', '2026-06-05T16:50:55.756690+00:00'::timestamptz, '103.252.25.60', 2, 54, NULL, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (49, 'si.adju', '2026-06-05T16:51:04.138273+00:00'::timestamptz, '110.226.226.242', 2, 54, NULL, 2, 8, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (50, 'op.edit', '2026-06-05T16:55:22.153371+00:00'::timestamptz, '103.252.25.53', 2, 54, NULL, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (51, 'op.edit', '2026-06-05T16:58:59.850329+00:00'::timestamptz, '103.252.25.53', 2, 54, NULL, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (52, 'op.edit', '2026-06-05T17:00:30.648722+00:00'::timestamptz, '103.252.25.53', 2, 54, NULL, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (53, 'op.edit', '2026-06-05T17:00:42.460212+00:00'::timestamptz, '103.252.25.60', 2, 54, NULL, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (54, 'op.edit', '2026-06-05T17:01:04.058811+00:00'::timestamptz, '103.252.25.60', 2, 54, NULL, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (55, 'av.tm.save', '2026-06-05T17:04:09.956466+00:00'::timestamptz, '103.252.25.60', 21, 53, 21, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (75, 'av.tm.save', '2026-06-05T17:04:28.739239+00:00'::timestamptz, '110.226.226.242', 21, 53, 21, 2, 8, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (76, 'av.tm.save', '2026-06-05T17:04:29.247059+00:00'::timestamptz, '110.226.226.242', 21, 53, 21, 2, 8, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (77, 'av.tm.save', '2026-06-05T17:04:30.947689+00:00'::timestamptz, '103.252.25.60', 21, 53, 21, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (78, 'av.aj.save', '2026-06-05T17:04:41.466668+00:00'::timestamptz, '103.252.25.60', 21, 53, 21, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (79, 'av.aj.save', '2026-06-05T17:04:43.265543+00:00'::timestamptz, '49.238.35.190', 24, 53, 24, 2, 16, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (80, 'av.aj.save', '2026-06-05T17:04:45.956515+00:00'::timestamptz, '152.59.79.230', 22, 53, 22, 2, 15, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (81, 'av.ve.save', '2026-06-05T17:04:53.978376+00:00'::timestamptz, '103.252.25.60', 21, 53, 21, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (82, 'av.aj.save', '2026-06-05T17:04:56.006899+00:00'::timestamptz, '49.36.186.182', 26, 53, 26, 2, 7, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (83, 'av.ve.save', '2026-06-05T17:04:56.966379+00:00'::timestamptz, '49.238.35.190', 24, 53, 24, 2, 16, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (84, 'av.aj.save', '2026-06-05T17:04:58.776944+00:00'::timestamptz, '49.36.186.182', 26, 53, 26, 2, 7, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (85, 'av.ve.save', '2026-06-05T17:04:59.971834+00:00'::timestamptz, '152.59.79.230', 22, 53, 22, 2, 15, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (86, 'av.ve.save', '2026-06-05T17:05:04.858265+00:00'::timestamptz, '152.59.79.230', 22, 53, 22, 2, 15, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (87, 'av.ve.save', '2026-06-05T17:05:07.959516+00:00'::timestamptz, '152.59.79.230', 22, 53, 22, 2, 15, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (88, 'av.ve.save', '2026-06-05T17:05:23.364788+00:00'::timestamptz, '49.36.186.182', 26, 53, 26, 2, 7, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (89, 'dr.crea', '2026-06-05T17:05:36.145789+00:00'::timestamptz, '103.252.25.60', 21, 53, 21, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (90, 'dr.crea', '2026-06-05T17:05:38.246176+00:00'::timestamptz, '49.238.35.190', 24, 53, 24, 2, 16, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (91, 'dr.crea', '2026-06-05T17:05:43.532861+00:00'::timestamptz, '49.36.186.182', 26, 53, 26, 2, 7, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (92, 'dr.crea', '2026-06-05T17:05:46.165721+00:00'::timestamptz, '152.59.79.230', 22, 53, 22, 2, 15, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (93, 'dr.conf', '2026-06-05T17:08:46.965065+00:00'::timestamptz, '103.252.25.60', 21, 53, 21, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (111, 'av.tm.save', '2026-06-06T11:54:11.544127+00:00'::timestamptz, '103.252.25.60', 29, 53, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (114, 'dr.crea', '2026-06-06T11:54:58.401975+00:00'::timestamptz, '103.252.25.60', 29, 53, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (115, 'dr.conf', '2026-06-06T11:55:39.691273+00:00'::timestamptz, '103.252.25.60', 29, 53, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (118, 'mo.rele', '2026-06-06T11:58:26.105259+00:00'::timestamptz, '103.252.25.53', 29, 53, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (120, 'ba.conf', '2026-06-06T12:01:33.366906+00:00'::timestamptz, '103.252.25.60', 3, 45, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (122, 'av.tm.save', '2026-06-07T14:43:50.525869+00:00'::timestamptz, '106.220.91.48', 29, 53, 29, 1, 11, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (125, 'dr.conf', '2026-06-07T14:46:59.570254+00:00'::timestamptz, '106.220.91.48', 29, 53, 29, 1, 11, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (126, 'mo.rele', '2026-06-07T14:51:57.985882+00:00'::timestamptz, '106.220.91.48', 29, 53, 29, 1, 11, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (1, 'si.inst', '2026-06-04T16:45:28.686178+00:00'::timestamptz, '103.252.25.53', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (2, 'si.team', '2026-06-04T16:47:50.032878+00:00'::timestamptz, '103.252.25.53', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (3, 'si.adju', '2026-06-04T16:49:02.974343+00:00'::timestamptz, '103.252.25.53', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (4, 'si.adju', '2026-06-04T16:49:04.083876+00:00'::timestamptz, '49.43.88.147', 1, 54, NULL, 1, 4, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (5, 'si.adju', '2026-06-04T16:49:07.776700+00:00'::timestamptz, '80.239.240.165', 1, 54, NULL, 1, 17, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (6, 'si.venu', '2026-06-04T16:49:47.693053+00:00'::timestamptz, '103.252.25.53', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (7, 'op.edit', '2026-06-04T16:53:40.477934+00:00'::timestamptz, '49.43.88.147', 1, 54, NULL, 1, 4, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (8, 'op.edit', '2026-06-04T16:53:58.680045+00:00'::timestamptz, '103.252.25.53', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (9, 'op.edit', '2026-06-04T16:54:03.376641+00:00'::timestamptz, '49.43.88.147', 1, 54, NULL, 1, 4, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (10, 'op.edit', '2026-06-04T16:55:32.864420+00:00'::timestamptz, '103.252.25.53', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (11, 'op.edit', '2026-06-04T16:55:53.287992+00:00'::timestamptz, '103.252.25.53', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (13, 'av.tm.save', '2026-06-04T16:57:11.955549+00:00'::timestamptz, '49.43.88.147', 2, 53, 2, 1, 4, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (14, 'av.tm.save', '2026-06-04T16:57:12.455947+00:00'::timestamptz, '80.239.240.165', 3, 53, 3, 1, 17, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (15, 'av.tm.save', '2026-06-04T16:57:15.877132+00:00'::timestamptz, '49.43.88.147', 2, 53, 2, 1, 4, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (16, 'av.tm.save', '2026-06-04T16:57:17.166633+00:00'::timestamptz, '49.43.88.147', 2, 53, 2, 1, 4, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (18, 'av.aj.save', '2026-06-04T16:57:36.418229+00:00'::timestamptz, '49.43.88.147', 2, 53, 2, 1, 4, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (19, 'av.aj.save', '2026-06-04T16:57:40.783833+00:00'::timestamptz, '80.239.240.165', 3, 53, 3, 1, 17, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (21, 'av.ve.save', '2026-06-04T16:57:52.934064+00:00'::timestamptz, '49.43.88.147', 2, 53, 2, 1, 4, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (23, 'dr.crea', '2026-06-04T16:58:51.196638+00:00'::timestamptz, '49.43.88.147', 2, 53, 2, 1, 4, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (24, 'dr.crea', '2026-06-04T16:59:00.279791+00:00'::timestamptz, '80.239.240.165', 3, 53, 3, 1, 17, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (26, 'dr.conf', '2026-06-04T17:00:59.881272+00:00'::timestamptz, '49.43.88.147', 2, 53, 2, 1, 4, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (27, 'dr.conf', '2026-06-04T17:01:02.230625+00:00'::timestamptz, '80.239.240.165', 3, 53, 3, 1, 17, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (30, 'mo.edit', '2026-06-04T17:04:36.987960+00:00'::timestamptz, '49.43.88.147', 2, 33, 2, 1, 4, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (31, 'mo.edit', '2026-06-04T17:04:37.072137+00:00'::timestamptz, '49.43.88.147', 3, 33, 2, 1, 4, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (32, 'mo.edit', '2026-06-04T17:04:37.103090+00:00'::timestamptz, '49.43.88.147', 4, 33, 2, 1, 4, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (34, 'dr.rele', '2026-06-04T17:05:08.959450+00:00'::timestamptz, '49.43.88.147', 2, 53, 2, 1, 4, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (35, 'mo.rele', '2026-06-04T17:05:20.688343+00:00'::timestamptz, '49.43.88.147', 2, 53, 2, 1, 4, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (12, 'av.tm.save', '2026-06-04T16:57:09.374150+00:00'::timestamptz, '103.252.25.53', 1, 53, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (17, 'av.aj.save', '2026-06-04T16:57:34.082682+00:00'::timestamptz, '103.252.25.53', 1, 53, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (20, 'av.ve.save', '2026-06-04T16:57:49.286279+00:00'::timestamptz, '103.252.25.53', 1, 53, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (22, 'dr.crea', '2026-06-04T16:58:00.383382+00:00'::timestamptz, '103.252.25.53', 1, 53, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (25, 'dr.conf', '2026-06-04T16:59:35.370371+00:00'::timestamptz, '103.252.25.53', 1, 53, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (28, 'mo.edit', '2026-06-04T17:04:16.027192+00:00'::timestamptz, '103.252.25.53', 1, 33, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (29, 'mo.rele', '2026-06-04T17:04:24.386158+00:00'::timestamptz, '103.252.25.60', 1, 53, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (33, 'dr.rele', '2026-06-04T17:05:03.090310+00:00'::timestamptz, '103.252.25.53', 1, 53, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (36, 'ba.subm', '2026-06-04T17:08:26.587031+00:00'::timestamptz, '103.252.25.60', 1, 45, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (37, 'ba.conf', '2026-06-04T17:10:01.401202+00:00'::timestamptz, '103.252.25.53', 1, 45, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (112, 'av.aj.save', '2026-06-06T11:54:40.082915+00:00'::timestamptz, '103.252.25.60', 29, 53, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (113, 'av.ve.save', '2026-06-06T11:54:48.575479+00:00'::timestamptz, '103.252.25.60', 29, 53, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (116, 'dr.rele', '2026-06-06T11:56:26.876790+00:00'::timestamptz, '103.252.25.60', 29, 53, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (117, 'mo.edit', '2026-06-06T11:58:20.468304+00:00'::timestamptz, '103.252.25.60', 7, 33, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (119, 'ba.subm', '2026-06-06T12:00:00.096228+00:00'::timestamptz, '103.252.25.60', 3, 45, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (121, 'rd.comp', '2026-06-06T12:02:02.689044+00:00'::timestamptz, '103.252.25.53', 29, 53, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (123, 'av.tm.save', '2026-06-07T14:43:51.060783+00:00'::timestamptz, '106.220.91.48', 29, 53, 29, 1, 11, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (124, 'dr.crea', '2026-06-07T14:44:51.571222+00:00'::timestamptz, '106.220.91.48', 29, 53, 29, 1, 11, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (56, 'av.tm.save', '2026-06-05T17:04:11.471467+00:00'::timestamptz, '103.252.25.60', 21, 53, 21, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (57, 'av.tm.save', '2026-06-05T17:04:11.967048+00:00'::timestamptz, '103.252.25.60', 21, 53, 21, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (58, 'av.tm.save', '2026-06-05T17:04:12.259473+00:00'::timestamptz, '103.252.25.60', 21, 53, 21, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (59, 'av.tm.save', '2026-06-05T17:04:12.958197+00:00'::timestamptz, '110.226.226.242', 21, 53, 21, 2, 8, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (60, 'av.tm.save', '2026-06-05T17:04:12.967827+00:00'::timestamptz, '49.238.35.190', 24, 53, 24, 2, 16, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (61, 'av.tm.save', '2026-06-05T17:04:13.554208+00:00'::timestamptz, '110.226.226.242', 21, 53, 21, 2, 8, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (62, 'av.tm.save', '2026-06-05T17:04:14.534596+00:00'::timestamptz, '49.238.35.190', 24, 53, 24, 2, 16, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (63, 'av.tm.save', '2026-06-05T17:04:14.635447+00:00'::timestamptz, '152.59.79.230', 22, 53, 22, 2, 15, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (64, 'av.tm.save', '2026-06-05T17:04:15.656699+00:00'::timestamptz, '49.238.35.190', 24, 53, 24, 2, 16, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (65, 'av.tm.save', '2026-06-05T17:04:16.054873+00:00'::timestamptz, '49.36.186.182', 26, 53, 26, 2, 7, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (66, 'av.tm.save', '2026-06-05T17:04:17.254878+00:00'::timestamptz, '49.238.35.190', 24, 53, 24, 2, 16, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (67, 'av.tm.save', '2026-06-05T17:04:17.651806+00:00'::timestamptz, '49.36.186.182', 26, 53, 26, 2, 7, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (68, 'av.tm.save', '2026-06-05T17:04:18.147564+00:00'::timestamptz, '49.36.186.182', 26, 53, 26, 2, 7, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (69, 'av.tm.save', '2026-06-05T17:04:18.351323+00:00'::timestamptz, '49.36.186.182', 26, 53, 26, 2, 7, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (70, 'av.tm.save', '2026-06-05T17:04:18.762972+00:00'::timestamptz, '152.59.79.230', 22, 53, 22, 2, 15, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (71, 'av.tm.save', '2026-06-05T17:04:19.434703+00:00'::timestamptz, '152.59.79.230', 22, 53, 22, 2, 15, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (72, 'av.tm.save', '2026-06-05T17:04:20.554532+00:00'::timestamptz, '152.59.79.230', 22, 53, 22, 2, 15, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (73, 'av.tm.save', '2026-06-05T17:04:27.749923+00:00'::timestamptz, '110.226.226.242', 21, 53, 21, 2, 8, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (74, 'av.tm.save', '2026-06-05T17:04:28.141499+00:00'::timestamptz, '110.226.226.242', 21, 53, 21, 2, 8, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (94, 'dr.conf', '2026-06-05T17:08:54.450701+00:00'::timestamptz, '49.238.35.190', 24, 53, 24, 2, 16, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (95, 'dr.conf', '2026-06-05T17:09:00.251896+00:00'::timestamptz, '152.59.79.236', 22, 53, 22, 2, 15, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (96, 'dr.conf', '2026-06-05T17:09:08.858777+00:00'::timestamptz, '49.36.186.182', 26, 53, 26, 2, 7, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (97, 'dr.rele', '2026-06-05T17:11:18.954636+00:00'::timestamptz, '103.252.25.53', 21, 53, 21, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (98, 'dr.rele', '2026-06-05T17:11:20.964235+00:00'::timestamptz, '152.59.79.236', 22, 53, 22, 2, 15, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (99, 'dr.rele', '2026-06-05T17:11:22.075093+00:00'::timestamptz, '49.238.35.190', 24, 53, 24, 2, 16, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (100, 'mo.edit', '2026-06-05T17:13:54.771561+00:00'::timestamptz, '152.59.79.236', 5, 33, 22, 2, 15, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (101, 'mo.edit', '2026-06-05T17:14:36.660164+00:00'::timestamptz, '103.252.25.53', 6, 33, 21, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (102, 'mo.rele', '2026-06-05T17:14:40.867222+00:00'::timestamptz, '103.252.25.53', 21, 53, 21, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (103, 'mo.rele', '2026-06-05T17:14:43.565218+00:00'::timestamptz, '152.59.79.236', 22, 53, 22, 2, 15, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (104, 'ba.subm', '2026-06-05T17:15:47.860016+00:00'::timestamptz, '103.252.25.53', 2, 45, 21, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (105, 'ba.conf', '2026-06-05T17:16:28.938196+00:00'::timestamptz, '103.252.25.53', 2, 45, 21, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (106, 'rd.comp', '2026-06-05T17:17:33.757185+00:00'::timestamptz, '103.252.25.53', 21, 53, 21, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (107, 'fb.subm', '2026-06-05T17:24:22.141700+00:00'::timestamptz, '103.252.25.53', 2, 18, 21, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (108, 'si.team', '2026-06-06T11:45:52.698112+00:00'::timestamptz, '103.252.25.53', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (109, 'op.edit', '2026-06-06T11:51:08.973949+00:00'::timestamptz, '103.252.25.60', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (110, 'av.tm.save', '2026-06-06T11:54:10.879270+00:00'::timestamptz, '103.252.25.60', 29, 53, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (175, 'fb.subm', '2026-05-25T12:39:01.193194+00:00'::timestamptz, '106.219.171.107', 31, 18, 15, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (176, 'ba.crea', '2026-05-25T12:44:09.128729+00:00'::timestamptz, '139.5.255.246', 19, 45, 15, 2, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (177, 'rd.comp', '2026-05-25T12:44:22.610137+00:00'::timestamptz, '139.5.255.246', 15, 53, 15, 2, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (178, 'op.edit', '2026-05-25T17:32:03.234141+00:00'::timestamptz, '103.252.25.53', 2, 54, NULL, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (179, 'op.edit', '2026-05-25T17:59:21.631084+00:00'::timestamptz, '103.252.25.60', 2, 54, NULL, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (127, 'si.team', '2026-06-10T16:17:55.646378+00:00'::timestamptz, '103.252.25.48', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (128, 'si.adju', '2026-06-10T16:18:56.025254+00:00'::timestamptz, '103.252.25.48', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (129, 'av.tm.save', '2026-06-10T16:19:06.522205+00:00'::timestamptz, '103.252.25.48', 29, 53, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (180, 'op.edit', '2026-05-25T18:00:08.729648+00:00'::timestamptz, '103.252.25.60', 2, 54, NULL, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (216, 'mo.rele', '2026-05-28T16:32:11.160489+00:00'::timestamptz, '103.252.25.60', 1, 53, 1, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (217, 'si.adju', '2026-05-28T16:55:02.261009+00:00'::timestamptz, '103.252.25.60', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (143, 'dr.rele', '2026-05-24T12:44:41.846944+00:00'::timestamptz, '152.57.121.225', 14, 53, 14, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (144, 'mo.edit', '2026-05-24T13:24:20.164727+00:00'::timestamptz, '152.57.121.225', 5, 33, 14, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (145, 'mo.rele', '2026-05-24T13:24:23.205663+00:00'::timestamptz, '152.57.121.225', 14, 53, 14, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (146, 'ba.subm', '2026-05-24T14:23:59.222535+00:00'::timestamptz, '223.177.142.6', 16, 45, 14, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (147, 'ba.edit', '2026-05-24T14:24:34.302173+00:00'::timestamptz, '152.57.121.225', 16, 45, 14, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (148, 'ba.crea', '2026-05-24T14:24:48.627233+00:00'::timestamptz, '152.57.121.225', 17, 45, 14, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (149, 'rd.comp', '2026-05-24T14:24:56.097108+00:00'::timestamptz, '152.57.121.225', 14, 53, 14, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (130, 'av.tm.save', '2026-06-10T16:19:07.379056+00:00'::timestamptz, '103.252.25.48', 29, 53, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (131, 'av.tm.save', '2026-06-10T16:19:08.940082+00:00'::timestamptz, '103.252.25.48', 29, 53, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (132, 'av.tm.save', '2026-06-10T16:19:09.620483+00:00'::timestamptz, '103.252.25.48', 29, 53, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (133, 'av.aj.save', '2026-06-10T16:19:18.923932+00:00'::timestamptz, '103.252.25.48', 29, 53, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (134, 'av.aj.save', '2026-06-10T16:19:20.103602+00:00'::timestamptz, '103.252.25.48', 29, 53, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (135, 'dr.crea', '2026-06-10T16:19:23.525949+00:00'::timestamptz, '103.252.25.48', 29, 53, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (136, 'dr.conf', '2026-06-10T16:19:33.754088+00:00'::timestamptz, '103.252.25.48', 29, 53, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (137, 'dr.rele', '2026-06-10T16:22:07.429545+00:00'::timestamptz, '103.252.25.48', 29, 53, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (138, 'mo.rele', '2026-06-10T16:22:10.039991+00:00'::timestamptz, '103.252.25.48', 29, 53, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (139, 'ba.crea', '2026-06-10T16:23:37.915088+00:00'::timestamptz, '103.252.25.48', 4, 45, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (140, 'rd.comp', '2026-06-10T16:23:51.178052+00:00'::timestamptz, '103.252.25.48', 29, 53, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (141, 'fb.subm', '2026-06-10T16:24:50.397983+00:00'::timestamptz, '103.252.25.48', 3, 18, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (142, 'fb.subm', '2026-06-10T16:25:58.518479+00:00'::timestamptz, '103.252.25.55', 4, 18, 29, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (150, 'fb.subm', '2026-05-24T14:37:03.717499+00:00'::timestamptz, '152.57.121.225', 21, 18, 14, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (151, 'fb.subm', '2026-05-24T14:45:56.189725+00:00'::timestamptz, '106.215.148.87', 22, 18, 14, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (152, 'av.tm.save', '2026-05-25T08:33:28.983184+00:00'::timestamptz, '139.5.255.246', 15, 53, 15, 2, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (153, 'av.tm.save', '2026-05-25T08:33:32.288949+00:00'::timestamptz, '139.5.255.246', 15, 53, 15, 2, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (154, 'av.aj.save', '2026-05-25T08:33:51.088621+00:00'::timestamptz, '139.5.255.246', 15, 53, 15, 2, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (155, 'av.aj.save', '2026-05-25T08:34:01.243526+00:00'::timestamptz, '139.5.255.246', 15, 53, 15, 2, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (156, 'av.aj.save', '2026-05-25T08:34:12.772487+00:00'::timestamptz, '139.5.255.246', 15, 53, 15, 2, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (157, 'av.ve.save', '2026-05-25T08:34:21.688481+00:00'::timestamptz, '139.5.255.246', 15, 53, 15, 2, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (158, 'dr.crea', '2026-05-25T08:34:26.584568+00:00'::timestamptz, '139.5.255.246', 15, 53, 15, 2, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (159, 'dr.conf', '2026-05-25T08:48:11.281679+00:00'::timestamptz, '139.5.255.246', 15, 53, 15, 2, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (160, 'dr.rele', '2026-05-25T08:48:45.390870+00:00'::timestamptz, '139.5.255.246', 15, 53, 15, 2, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (161, 'av.aj.save', '2026-05-25T08:55:27.905827+00:00'::timestamptz, '139.5.255.246', 15, 53, 15, 2, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (162, 'av.aj.save', '2026-05-25T10:15:14.381196+00:00'::timestamptz, '139.5.255.246', 15, 53, 15, 2, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (163, 'mo.edit', '2026-05-25T10:17:24.767511+00:00'::timestamptz, '139.5.255.246', 6, 33, 15, 2, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (164, 'mo.rele', '2026-05-25T10:17:31.497840+00:00'::timestamptz, '139.5.255.246', 15, 53, 15, 2, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (165, 'av.aj.save', '2026-05-25T10:41:11.136959+00:00'::timestamptz, '139.5.255.246', 15, 53, 15, 2, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (166, 'fb.subm', '2026-05-25T11:52:41.801167+00:00'::timestamptz, '1.38.51.1', 23, 18, 15, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (167, 'ba.subm', '2026-05-25T11:53:28.990690+00:00'::timestamptz, '139.5.255.246', 18, 45, 15, 2, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (168, 'fb.subm', '2026-05-25T12:14:08.513074+00:00'::timestamptz, '1.38.51.1', 24, 18, 15, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (169, 'fb.subm', '2026-05-25T12:22:17.580237+00:00'::timestamptz, '1.38.51.1', 25, 18, 15, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (170, 'fb.subm', '2026-05-25T12:33:42.025519+00:00'::timestamptz, '43.250.165.82', 26, 18, 15, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (171, 'fb.subm', '2026-05-25T12:33:58.709252+00:00'::timestamptz, '43.250.165.82', 27, 18, 15, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (172, 'fb.subm', '2026-05-25T12:34:12.269706+00:00'::timestamptz, '43.250.165.82', 28, 18, 15, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (173, 'fb.subm', '2026-05-25T12:38:26.486057+00:00'::timestamptz, '106.219.171.107', 29, 18, 15, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (174, 'fb.subm', '2026-05-25T12:38:41.482681+00:00'::timestamptz, '106.219.171.107', 30, 18, 15, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (234, 'ba.disc', '2026-05-29T03:55:26.149878+00:00'::timestamptz, '103.252.25.60', 24, 45, 1, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (181, 'av.tm.save', '2026-05-26T16:40:16.681129+00:00'::timestamptz, '103.252.25.60', 16, 53, 16, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (182, 'av.tm.save', '2026-05-26T16:40:18.215309+00:00'::timestamptz, '103.252.25.60', 16, 53, 16, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (183, 'av.aj.save', '2026-05-26T16:40:26.477091+00:00'::timestamptz, '103.252.25.60', 16, 53, 16, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (184, 'av.ve.save', '2026-05-26T16:40:33.618803+00:00'::timestamptz, '103.252.25.60', 16, 53, 16, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (185, 'dr.crea', '2026-05-26T16:41:15.967437+00:00'::timestamptz, '103.252.25.60', 16, 53, 16, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (186, 'dr.conf', '2026-05-26T16:41:21.084861+00:00'::timestamptz, '103.252.25.60', 16, 53, 16, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (187, 'dr.rele', '2026-05-26T16:43:12.685041+00:00'::timestamptz, '103.252.25.60', 16, 53, 16, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (188, 'av.aj.save', '2026-05-26T17:21:48.688264+00:00'::timestamptz, '103.252.25.60', 16, 53, 16, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (189, 'ba.subm', '2026-05-26T18:39:28.935198+00:00'::timestamptz, '157.48.224.155', 20, 45, 16, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (190, 'ba.edit', '2026-05-26T18:46:20.128571+00:00'::timestamptz, '152.57.43.133', 20, 45, 16, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (191, 'mo.edit', '2026-05-26T18:53:20.725338+00:00'::timestamptz, '152.57.43.133', 7, 33, 16, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (192, 'mo.rele', '2026-05-26T18:53:30.283902+00:00'::timestamptz, '152.57.43.133', 16, 53, 16, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (193, 'fb.subm', '2026-05-26T19:21:38.772748+00:00'::timestamptz, '117.201.68.39', 32, 18, 16, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (194, 'fb.subm', '2026-05-26T19:24:18.658603+00:00'::timestamptz, '117.201.68.39', 33, 18, 16, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (195, 'fb.subm', '2026-05-26T19:26:23.830260+00:00'::timestamptz, '117.201.68.39', 34, 18, 16, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (196, 'fb.subm', '2026-05-26T19:27:38.919827+00:00'::timestamptz, '117.201.68.39', 35, 18, 16, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (197, 'ba.subm', '2026-05-26T19:30:11.121143+00:00'::timestamptz, '152.58.177.224', 21, 45, 16, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (198, 'fb.subm', '2026-05-26T19:34:12.530202+00:00'::timestamptz, '49.43.106.195', 36, 18, 16, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (199, 'fb.subm', '2026-05-26T19:34:46.099516+00:00'::timestamptz, '49.43.106.195', 37, 18, 16, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (200, 'ba.crea', '2026-05-26T19:34:49.533530+00:00'::timestamptz, '152.57.43.133', 22, 45, 16, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (201, 'rd.comp', '2026-05-26T19:35:02.976168+00:00'::timestamptz, '152.57.43.133', 16, 53, 16, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (202, 'ba.conf', '2026-05-26T19:36:04.933031+00:00'::timestamptz, '152.57.43.133', 22, 45, 16, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (203, 'op.edit', '2026-05-28T13:05:36.397216+00:00'::timestamptz, '223.185.131.56', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (204, 'op.edit', '2026-05-28T13:05:55.993904+00:00'::timestamptz, '223.185.131.56', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (205, 'op.edit', '2026-05-28T13:06:34.285211+00:00'::timestamptz, '223.185.131.56', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (206, 'op.edit', '2026-05-28T13:07:30.576137+00:00'::timestamptz, '223.185.131.56', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (207, 'op.edit', '2026-05-28T13:08:28.234448+00:00'::timestamptz, '223.185.131.56', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (208, 'op.edit', '2026-05-28T13:08:40.890338+00:00'::timestamptz, '223.185.131.56', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (209, 'op.edit', '2026-05-28T13:08:50.889098+00:00'::timestamptz, '223.185.131.56', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (210, 'op.edit', '2026-05-28T13:08:57.868373+00:00'::timestamptz, '223.185.131.56', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (211, 'si.adju', '2026-05-28T13:09:46.791271+00:00'::timestamptz, '223.185.131.56', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (212, 'av.aj.save', '2026-05-28T13:09:57.928310+00:00'::timestamptz, '223.185.131.56', 1, 53, 1, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (213, 'dr.crea', '2026-05-28T13:11:34.685836+00:00'::timestamptz, '223.185.131.56', 1, 53, 1, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (214, 'dr.conf', '2026-05-28T13:15:16.485101+00:00'::timestamptz, '223.185.131.56', 1, 53, 1, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (215, 'dr.rele', '2026-05-28T13:17:38.794477+00:00'::timestamptz, '223.185.131.56', 1, 53, 1, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (218, 'av.aj.save', '2026-05-28T17:29:58.771835+00:00'::timestamptz, '103.252.25.53', 1, 53, 1, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (219, 'rd.edit', '2026-05-28T17:30:28.411038+00:00'::timestamptz, '103.252.25.53', 1, 53, NULL, 1, 1, 'a') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (220, 'rd.edit', '2026-05-28T17:30:35.566036+00:00'::timestamptz, '103.252.25.53', 1, 53, NULL, 1, 1, 'a') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (221, 'fb.subm', '2026-05-28T18:34:14.813493+00:00'::timestamptz, '43.250.165.82', 38, 18, 1, 1, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (222, 'ba.subm', '2026-05-28T18:34:36.690386+00:00'::timestamptz, '122.171.16.93', 23, 45, 1, 1, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (223, 'fb.subm', '2026-05-28T18:35:45.287236+00:00'::timestamptz, '122.171.16.93', 39, 18, 1, 1, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (224, 'fb.subm', '2026-05-28T18:36:08.233419+00:00'::timestamptz, '122.171.16.93', 40, 18, 1, 1, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (225, 'ba.subm', '2026-05-28T18:36:34.890079+00:00'::timestamptz, '106.222.207.241', 24, 45, 1, 1, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (226, 'ba.conf', '2026-05-28T18:44:04.514191+00:00'::timestamptz, '103.252.25.53', 23, 45, 1, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (227, 'rd.comp', '2026-05-28T18:44:16.437835+00:00'::timestamptz, '103.252.25.53', 1, 53, 1, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (228, 'fb.subm', '2026-05-28T18:56:14.414586+00:00'::timestamptz, '106.219.170.120', 41, 18, 1, 1, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (229, 'fb.subm', '2026-05-28T18:57:20.777311+00:00'::timestamptz, '47.15.116.220', 42, 18, 1, 1, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (230, 'fb.subm', '2026-05-28T19:01:16.881148+00:00'::timestamptz, '122.161.65.145', 43, 18, 1, 1, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (231, 'fb.subm', '2026-05-28T19:02:01.027391+00:00'::timestamptz, '59.99.103.97', 44, 18, 1, 1, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (232, 'op.edit', '2026-05-28T19:02:02.818925+00:00'::timestamptz, '103.252.25.53', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (233, 'op.edit', '2026-05-28T19:02:30.833498+00:00'::timestamptz, '103.252.25.53', 1, 54, NULL, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (235, 'av.tm.save', '2026-05-29T08:11:58.209119+00:00'::timestamptz, '106.202.244.253', 2, 53, 2, 1, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (236, 'av.tm.save', '2026-05-29T08:11:59.148175+00:00'::timestamptz, '106.202.244.253', 2, 53, 2, 1, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (237, 'av.tm.save', '2026-05-29T08:12:00.294133+00:00'::timestamptz, '106.202.244.253', 2, 53, 2, 1, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (238, 'av.tm.save', '2026-05-29T08:12:01.209390+00:00'::timestamptz, '106.202.244.253', 2, 53, 2, 1, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (239, 'av.aj.save', '2026-05-29T08:13:12.882139+00:00'::timestamptz, '106.202.244.253', 2, 53, 2, 1, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (240, 'av.ve.save', '2026-05-29T08:13:27.573139+00:00'::timestamptz, '106.202.244.253', 2, 53, 2, 1, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (241, 'dr.crea', '2026-05-29T08:13:31.380333+00:00'::timestamptz, '106.202.244.253', 2, 53, 2, 1, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (242, 'dr.conf', '2026-05-29T08:13:49.637462+00:00'::timestamptz, '106.202.244.253', 2, 53, 2, 1, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (243, 'dr.rele', '2026-05-29T08:17:42.233304+00:00'::timestamptz, '106.202.244.253', 2, 53, 2, 1, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (244, 'ba.subm', '2026-05-29T10:45:48.837051+00:00'::timestamptz, '103.37.201.132', 25, 45, 2, 1, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (245, 'fb.subm', '2026-05-29T11:15:05.167233+00:00'::timestamptz, '103.172.4.251', 45, 18, 2, 1, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (246, 'fb.subm', '2026-05-29T11:17:39.384111+00:00'::timestamptz, '106.219.171.181', 46, 18, 2, 1, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (247, 'fb.subm', '2026-05-29T11:17:49.789596+00:00'::timestamptz, '122.161.77.105', 47, 18, 2, 1, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (248, 'fb.subm', '2026-05-29T11:19:42.096986+00:00'::timestamptz, '103.138.185.220', 48, 18, 2, 1, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (249, 'fb.subm', '2026-05-29T11:22:20.091407+00:00'::timestamptz, '117.98.62.65', 49, 18, 2, 1, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (250, 'ba.conf', '2026-05-29T11:56:30.459953+00:00'::timestamptz, '106.202.244.253', 25, 45, 2, 1, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (251, 'rd.comp', '2026-05-29T11:56:43.397336+00:00'::timestamptz, '106.202.244.253', 2, 53, 2, 1, 2, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (252, 'mo.edit', '2026-05-29T17:52:43.805547+00:00'::timestamptz, '103.252.25.53', 8, 33, 2, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (253, 'mo.rele', '2026-05-29T17:52:47.975116+00:00'::timestamptz, '103.252.25.53', 2, 53, 2, 1, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (254, 'av.tm.save', '2026-06-01T15:57:03.745725+00:00'::timestamptz, '103.252.25.53', 17, 53, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (255, 'av.tm.save', '2026-06-01T15:57:05.067608+00:00'::timestamptz, '103.252.25.53', 17, 53, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (256, 'av.aj.save', '2026-06-01T15:57:17.088375+00:00'::timestamptz, '103.252.25.53', 17, 53, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (257, 'av.aj.save', '2026-06-01T15:57:17.936421+00:00'::timestamptz, '103.252.25.53', 17, 53, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (258, 'av.ve.save', '2026-06-01T15:57:22.834638+00:00'::timestamptz, '103.252.25.53', 17, 53, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (259, 'dr.crea', '2026-06-01T15:57:25.509380+00:00'::timestamptz, '103.252.25.53', 17, 53, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (260, 'dr.conf', '2026-06-01T15:57:31.622695+00:00'::timestamptz, '103.252.25.53', 17, 53, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (261, 'dr.rele', '2026-06-01T15:58:50.270928+00:00'::timestamptz, '103.252.25.53', 17, 53, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (262, 'mo.edit', '2026-06-01T16:03:53.360449+00:00'::timestamptz, '103.252.25.53', 9, 33, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (263, 'mo.rele', '2026-06-01T16:04:00.282170+00:00'::timestamptz, '103.252.25.53', 17, 53, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (264, 'op.edit', '2026-06-01T17:38:47.988913+00:00'::timestamptz, '103.252.25.53', 2, 54, NULL, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (265, 'dr.unre', '2026-06-01T17:39:16.889498+00:00'::timestamptz, '103.252.25.53', 17, 53, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (266, 'dr.rele', '2026-06-01T17:39:19.583054+00:00'::timestamptz, '103.252.25.53', 17, 53, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (267, 'ba.subm', '2026-06-01T17:39:57.051907+00:00'::timestamptz, '43.224.128.131', 26, 45, 17, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (268, 'op.edit', '2026-06-01T17:40:41.286801+00:00'::timestamptz, '103.252.25.53', 2, 54, NULL, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (269, 'op.edit', '2026-06-01T17:41:57.449426+00:00'::timestamptz, '103.252.25.60', 2, 54, NULL, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (270, 'av.aj.save', '2026-06-01T17:44:58.998193+00:00'::timestamptz, '103.252.25.60', 17, 53, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (281, 'ba.conf', '2026-06-02T04:37:07.471486+00:00'::timestamptz, '103.252.25.60', 27, 45, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (282, 'ba.conf', '2026-06-02T04:38:34.956036+00:00'::timestamptz, '103.252.25.60', 27, 45, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (271, 'av.aj.save', '2026-06-01T17:44:59.583198+00:00'::timestamptz, '103.252.25.60', 17, 53, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (272, 'av.aj.save', '2026-06-01T17:50:54.794845+00:00'::timestamptz, '103.252.25.53', 17, 53, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (273, 'av.aj.save', '2026-06-01T17:50:56.167059+00:00'::timestamptz, '103.252.25.53', 17, 53, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (274, 'dr.unre', '2026-06-01T17:51:42.588107+00:00'::timestamptz, '103.252.25.53', 17, 53, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (275, 'dr.rele', '2026-06-01T17:51:48.569436+00:00'::timestamptz, '103.252.25.53', 17, 53, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (276, 'ba.edit', '2026-06-01T17:53:17.953106+00:00'::timestamptz, '103.252.25.53', 26, 45, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (277, 'ba.crea', '2026-06-01T17:59:10.574402+00:00'::timestamptz, '103.252.25.60', 27, 45, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (278, 'rd.comp', '2026-06-01T17:59:24.696651+00:00'::timestamptz, '103.252.25.60', 17, 53, 17, 2, 1, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (279, 'fb.subm', '2026-06-01T18:58:37.094626+00:00'::timestamptz, '103.37.201.132', 52, 18, 17, 2, NULL, 'w') ON CONFLICT DO NOTHING;
INSERT INTO "actionlog_actionlogentry" ("id", "type", "timestamp", "ip_address", "object_id", "content_type_id", "round_id", "tournament_id", "user_id", "agent") VALUES (280, 'fb.subm', '2026-06-01T19:01:47.807557+00:00'::timestamptz, '103.37.201.132', 53, 18, 17, 2, NULL, 'w') ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "adjallocation_adjudicatoradjudicatorconflict" (
    "id" integer NOT NULL,
    "adjudicator1_id" integer NOT NULL,
    "adjudicator2_id" integer NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "adjallocation_adjudicatorinstitutionconflict" (
    "id" integer NOT NULL,
    "adjudicator_id" integer NOT NULL,
    "institution_id" integer NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (1, 7, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (2, 8, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (3, 9, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (4, 18, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (5, 19, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (6, 20, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (7, 21, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (8, 22, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (9, 35, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (10, 58, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (11, 59, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (12, 60, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (13, 61, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (14, 62, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (15, 63, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (16, 64, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (17, 65, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (18, 66, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (19, 67, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (20, 68, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (21, 69, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (22, 70, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (23, 71, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (24, 72, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (25, 73, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (26, 74, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (27, 75, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (28, 76, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (29, 77, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (30, 78, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (31, 79, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (32, 80, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (33, 81, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (34, 82, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (35, 83, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (36, 84, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (37, 85, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (38, 86, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (39, 87, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (40, 104, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_adjudicatorinstitutionconflict" ("id", "adjudicator_id", "institution_id") VALUES (41, 105, 1) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "adjallocation_adjudicatorteamconflict" (
    "id" integer NOT NULL,
    "adjudicator_id" integer NOT NULL,
    "team_id" integer NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "adjallocation_debateadjudicator" (
    "id" integer NOT NULL,
    "type" VARCHAR(2) NOT NULL,
    "timing_confirmed" boolean,
    "adjudicator_id" integer NOT NULL,
    "debate_id" integer NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (11, 'C', NULL, 35, 10) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (1, 'C', NULL, 7, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (2, 'C', NULL, 50, 2) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (3, 'P', NULL, 51, 2) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (4, 'P', NULL, 52, 2) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (19, 'C', NULL, 51, 8) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (22, 'P', NULL, 55, 8) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (23, 'P', NULL, 54, 8) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (24, 'C', NULL, 87, 9) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (25, 'P', NULL, 55, 9) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (26, 'C', NULL, 5, 10) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (27, 'P', NULL, 104, 10) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (28, 'P', NULL, 105, 10) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (29, 'C', NULL, 106, 11) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (10, 'C', NULL, 53, 4) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (7, 'P', NULL, 56, 4) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (8, 'P', NULL, 57, 4) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (12, 'P', NULL, 55, 4) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (13, 'C', NULL, 51, 5) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (14, 'P', NULL, 58, 5) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (15, 'P', NULL, 50, 5) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (16, 'P', NULL, 54, 5) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (18, 'C', NULL, 87, 7) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (31, 'P', true, 61, 12) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_debateadjudicator" ("id", "type", "timing_confirmed", "adjudicator_id", "debate_id") VALUES (30, 'C', true, 60, 12) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "adjallocation_preformedpanel" (
    "id" integer NOT NULL,
    "importance" double precision NOT NULL,
    "round_id" integer NOT NULL,
    "bracket_max" double precision NOT NULL,
    "bracket_min" double precision NOT NULL,
    "liveness" integer NOT NULL,
    "room_rank" integer NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "adjallocation_preformedpanel" ("id", "importance", "round_id", "bracket_max", "bracket_min", "liveness", "room_rank") VALUES (1, 0.0, 14, 0.0, 0.0, 0, 1) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "adjallocation_preformedpaneladjudicator" (
    "id" integer NOT NULL,
    "type" VARCHAR(2) NOT NULL,
    "adjudicator_id" integer NOT NULL,
    "panel_id" integer NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "adjallocation_preformedpaneladjudicator" ("id", "type", "adjudicator_id", "panel_id") VALUES (1, 'C', 87, 1) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "adjallocation_teaminstitutionconflict" (
    "id" integer NOT NULL,
    "institution_id" integer NOT NULL,
    "team_id" integer NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (9, 1, 9) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (10, 1, 10) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (1, 1, 1) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (2, 1, 2) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (3, 1, 3) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (4, 1, 4) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (5, 1, 5) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (6, 1, 6) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (7, 1, 7) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (8, 1, 8) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (11, 1, 11) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (12, 1, 12) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (13, 1, 13) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (14, 1, 14) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (15, 1, 15) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (16, 1, 16) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (17, 1, 17) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (18, 1, 18) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (19, 1, 19) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (20, 1, 20) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (21, 1, 21) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (22, 1, 22) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (23, 1, 23) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (24, 1, 24) ON CONFLICT DO NOTHING;
INSERT INTO "adjallocation_teaminstitutionconflict" ("id", "institution_id", "team_id") VALUES (25, 1, 25) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "adjfeedback_adjudicatorbasescorehistory" (
    "id" integer NOT NULL,
    "score" double precision NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    "adjudicator_id" integer NOT NULL,
    "round_id" integer,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "adjfeedback_adjudicatorfeedback" (
    "id" integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    "version" integer NOT NULL,
    "submitter_type" VARCHAR(1) NOT NULL,
    "confirmed" boolean NOT NULL,
    "confirm_timestamp" timestamp with time zone,
    "ip_address" inet,
    "score" double precision NOT NULL,
    "adjudicator_id" integer NOT NULL,
    "confirmer_id" integer,
    "source_adjudicator_id" integer,
    "source_team_id" integer,
    "submitter_id" integer,
    "ignored" boolean NOT NULL,
    "participant_submitter_id" integer,
    "private_url" boolean NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (3, '2026-06-10T16:24:50.178140+00:00'::timestamptz, 1, 'P', true, '2026-06-10T16:24:50.142593+00:00'::timestamptz, '103.252.25.48', 6.0, 35, NULL, NULL, 27, NULL, false, 30, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (1, '2026-05-20T14:48:44.871538+00:00'::timestamptz, 1, 'P', true, '2026-05-20T14:48:44.796034+00:00'::timestamptz, '49.43.88.36', 9.0, 51, NULL, NULL, 5, NULL, false, 12, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (4, '2026-06-10T16:25:58.423928+00:00'::timestamptz, 1, 'P', true, '2026-06-10T16:25:58.414638+00:00'::timestamptz, '103.252.25.55', 9.0, 35, NULL, NULL, 28, NULL, false, 32, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (2, '2026-05-20T15:12:02.124307+00:00'::timestamptz, 1, 'P', true, '2026-05-20T15:12:02.116199+00:00'::timestamptz, '49.43.88.36', 5.0, 50, NULL, NULL, 5, NULL, false, 12, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (5, '2026-05-21T19:19:55.427442+00:00'::timestamptz, 1, 'P', true, '2026-05-21T19:19:55.350976+00:00'::timestamptz, '122.161.67.240', 5.5, 55, NULL, NULL, 9, NULL, false, 14, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (6, '2026-05-21T19:21:49.177693+00:00'::timestamptz, 1, 'P', true, '2026-05-21T19:21:49.164826+00:00'::timestamptz, '103.37.201.183', 9.0, 53, NULL, NULL, 10, NULL, false, 16, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (7, '2026-05-21T19:22:46.283857+00:00'::timestamptz, 1, 'P', true, '2026-05-21T19:22:46.275443+00:00'::timestamptz, '122.161.67.240', 6.5, 56, NULL, NULL, 9, NULL, false, 14, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (8, '2026-05-21T19:24:38.165309+00:00'::timestamptz, 1, 'P', true, '2026-05-21T19:24:38.123276+00:00'::timestamptz, '122.161.67.240', 6.0, 57, NULL, NULL, 9, NULL, false, 14, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (9, '2026-05-21T19:26:14.922683+00:00'::timestamptz, 1, 'P', true, '2026-05-21T19:26:14.885324+00:00'::timestamptz, '122.161.67.240', 9.0, 53, NULL, NULL, 9, NULL, false, 14, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (10, '2026-05-21T19:26:31.751966+00:00'::timestamptz, 1, 'P', true, '2026-05-21T19:26:31.736993+00:00'::timestamptz, '103.37.201.183', 7.0, 57, NULL, NULL, 10, NULL, false, 16, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (11, '2026-05-21T19:27:59.364131+00:00'::timestamptz, 1, 'P', true, '2026-05-21T19:27:59.303123+00:00'::timestamptz, '103.37.201.183', 7.0, 56, NULL, NULL, 10, NULL, false, 16, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (12, '2026-05-21T19:29:19.887694+00:00'::timestamptz, 1, 'P', true, '2026-05-21T19:29:19.870839+00:00'::timestamptz, '103.37.201.183', 8.0, 55, NULL, NULL, 10, NULL, false, 16, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (13, '2026-05-22T11:01:01.370494+00:00'::timestamptz, 1, 'P', true, '2026-05-22T11:01:01.307796+00:00'::timestamptz, '106.215.147.209', 9.0, 54, NULL, NULL, 11, NULL, false, 21, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (14, '2026-05-22T11:03:08.655095+00:00'::timestamptz, 1, 'P', true, '2026-05-22T11:03:08.602837+00:00'::timestamptz, '122.161.67.240', 8.5, 54, NULL, NULL, 12, NULL, false, 18, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (15, '2026-05-22T11:15:41.936867+00:00'::timestamptz, 1, 'P', true, '2026-05-22T11:15:41.924834+00:00'::timestamptz, '49.156.101.78', 7.0, 50, NULL, NULL, 12, NULL, false, 18, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (16, '2026-05-22T11:26:36.175207+00:00'::timestamptz, 1, 'P', true, '2026-05-22T11:26:36.169187+00:00'::timestamptz, '106.215.147.209', 6.0, 50, NULL, NULL, 11, NULL, false, 21, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (17, '2026-05-22T11:37:22.259945+00:00'::timestamptz, 1, 'P', true, '2026-05-22T11:37:22.190953+00:00'::timestamptz, '106.215.147.209', 9.5, 51, NULL, NULL, 11, NULL, false, 21, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (18, '2026-05-22T11:53:19.005712+00:00'::timestamptz, 1, 'P', true, '2026-05-22T11:53:18.986590+00:00'::timestamptz, '106.215.147.209', 8.0, 58, NULL, NULL, 11, NULL, false, 21, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (19, '2026-05-22T12:06:43.553951+00:00'::timestamptz, 1, 'P', true, '2026-05-22T12:06:43.521063+00:00'::timestamptz, '103.138.185.220', 9.0, 51, NULL, NULL, 12, NULL, false, 99, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (20, '2026-05-22T12:09:01.659161+00:00'::timestamptz, 1, 'P', true, '2026-05-22T12:09:01.591532+00:00'::timestamptz, '103.138.185.220', 7.0, 58, NULL, NULL, 12, NULL, false, 99, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (21, '2026-05-24T14:37:03.635774+00:00'::timestamptz, 1, 'P', true, '2026-05-24T14:37:03.619011+00:00'::timestamptz, '152.57.121.225', 9.0, 87, NULL, NULL, 16, NULL, false, 25, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (22, '2026-05-24T14:45:56.165201+00:00'::timestamptz, 1, 'P', true, '2026-05-24T14:45:56.094664+00:00'::timestamptz, '106.215.148.87', 8.5, 87, NULL, NULL, 15, NULL, false, 100, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (26, '2026-05-25T12:33:41.994299+00:00'::timestamptz, 1, 'P', true, '2026-05-25T12:33:41.980342+00:00'::timestamptz, '43.250.165.82', 7.5, 54, NULL, NULL, 18, NULL, false, 26, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (27, '2026-05-25T12:33:58.695067+00:00'::timestamptz, 1, 'P', true, '2026-05-25T12:33:58.683663+00:00'::timestamptz, '43.250.165.82', 8.0, 55, NULL, NULL, 18, NULL, false, 26, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (28, '2026-05-25T12:34:12.166632+00:00'::timestamptz, 1, 'P', true, '2026-05-25T12:34:12.064026+00:00'::timestamptz, '43.250.165.82', 8.5, 51, NULL, NULL, 18, NULL, false, 26, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (25, '2026-05-25T12:22:17.475277+00:00'::timestamptz, 1, 'P', false, '2026-05-25T12:22:17.393359+00:00'::timestamptz, '1.38.51.1', 8.5, 51, NULL, NULL, 17, NULL, false, 28, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (29, '2026-05-25T12:38:26.408881+00:00'::timestamptz, 2, 'P', true, '2026-05-25T12:38:26.395295+00:00'::timestamptz, '106.219.171.107', 8.0, 51, NULL, NULL, 17, NULL, false, 29, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (23, '2026-05-25T11:52:41.711722+00:00'::timestamptz, 1, 'P', false, '2026-05-25T11:52:41.697786+00:00'::timestamptz, '1.38.51.1', 8.5, 54, NULL, NULL, 17, NULL, false, 28, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (30, '2026-05-25T12:38:41.400240+00:00'::timestamptz, 2, 'P', true, '2026-05-25T12:38:41.385097+00:00'::timestamptz, '106.219.171.107', 8.0, 54, NULL, NULL, 17, NULL, false, 29, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (24, '2026-05-25T12:14:08.485054+00:00'::timestamptz, 1, 'P', false, '2026-05-25T12:14:08.464612+00:00'::timestamptz, '1.38.51.1', 7.5, 55, NULL, NULL, 17, NULL, false, 28, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (31, '2026-05-25T12:39:01.121597+00:00'::timestamptz, 2, 'P', true, '2026-05-25T12:39:01.102557+00:00'::timestamptz, '106.219.171.107', 7.0, 55, NULL, NULL, 17, NULL, false, 29, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (32, '2026-05-26T19:21:38.576799+00:00'::timestamptz, 1, 'P', false, '2026-05-26T19:21:38.503075+00:00'::timestamptz, '117.201.68.39', 9.0, 87, NULL, NULL, 20, NULL, false, 31, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (33, '2026-05-26T19:24:18.571132+00:00'::timestamptz, 2, 'P', false, '2026-05-26T19:24:18.558066+00:00'::timestamptz, '117.201.68.39', 8.0, 87, NULL, NULL, 20, NULL, false, 31, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (34, '2026-05-26T19:26:23.765884+00:00'::timestamptz, 3, 'P', true, '2026-05-26T19:26:23.741763+00:00'::timestamptz, '117.201.68.39', 9.0, 87, NULL, NULL, 20, NULL, false, 31, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (35, '2026-05-26T19:27:38.774994+00:00'::timestamptz, 1, 'P', true, '2026-05-26T19:27:38.662926+00:00'::timestamptz, '117.201.68.39', 8.0, 55, NULL, NULL, 20, NULL, false, 31, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (36, '2026-05-26T19:34:12.440900+00:00'::timestamptz, 1, 'P', true, '2026-05-26T19:34:12.431463+00:00'::timestamptz, '49.43.106.195', 8.5, 55, NULL, NULL, 19, NULL, false, 33, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (37, '2026-05-26T19:34:46.070524+00:00'::timestamptz, 1, 'P', true, '2026-05-26T19:34:46.014838+00:00'::timestamptz, '49.43.106.195', 9.0, 87, NULL, NULL, 19, NULL, false, 33, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (38, '2026-05-28T18:34:14.767195+00:00'::timestamptz, 1, 'P', true, '2026-05-28T18:34:14.707456+00:00'::timestamptz, '43.250.165.82', 8.0, 5, NULL, 28, NULL, NULL, false, 105, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (39, '2026-05-28T18:35:45.199966+00:00'::timestamptz, 1, 'P', true, '2026-05-28T18:35:45.194273+00:00'::timestamptz, '122.171.16.93', 8.0, 104, NULL, 26, NULL, NULL, false, 5, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (40, '2026-05-28T18:36:08.206413+00:00'::timestamptz, 1, 'P', true, '2026-05-28T18:36:08.203211+00:00'::timestamptz, '122.171.16.93', 8.0, 105, NULL, 26, NULL, NULL, false, 5, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (41, '2026-05-28T18:56:14.396342+00:00'::timestamptz, 1, 'P', true, '2026-05-28T18:56:14.383089+00:00'::timestamptz, '106.219.170.120', 7.0, 5, NULL, NULL, 23, NULL, false, 2, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (42, '2026-05-28T18:57:20.705677+00:00'::timestamptz, 1, 'P', true, '2026-05-28T18:57:20.696623+00:00'::timestamptz, '47.15.116.220', 7.0, 5, NULL, NULL, 24, NULL, false, 8, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (43, '2026-05-28T19:01:16.801967+00:00'::timestamptz, 1, 'P', true, '2026-05-28T19:01:16.763497+00:00'::timestamptz, '122.161.65.145', 6.0, 5, NULL, NULL, 22, NULL, false, 7, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (44, '2026-05-28T19:02:01.008662+00:00'::timestamptz, 1, 'P', true, '2026-05-28T19:02:00.992131+00:00'::timestamptz, '59.99.103.97', 8.0, 5, NULL, NULL, 21, NULL, false, 4, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (45, '2026-05-29T11:15:05.095498+00:00'::timestamptz, 1, 'P', true, '2026-05-29T11:15:05.086392+00:00'::timestamptz, '103.172.4.251', 8.0, 106, NULL, NULL, 26, NULL, false, 110, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (47, '2026-05-29T11:17:49.733900+00:00'::timestamptz, 1, 'P', true, '2026-05-29T11:17:49.719001+00:00'::timestamptz, '122.161.77.105', 9.0, 106, NULL, NULL, 27, NULL, false, 111, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (48, '2026-05-29T11:19:42.017804+00:00'::timestamptz, 1, 'P', true, '2026-05-29T11:19:42.006479+00:00'::timestamptz, '103.138.185.220', 7.0, 106, NULL, NULL, 28, NULL, false, 114, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (46, '2026-05-29T11:17:39.307495+00:00'::timestamptz, 1, 'P', false, '2026-05-29T11:17:39.299824+00:00'::timestamptz, '106.219.171.181', 8.0, 106, NULL, NULL, 25, NULL, false, 107, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (49, '2026-05-29T11:22:20.034088+00:00'::timestamptz, 2, 'P', true, '2026-05-29T11:22:20.010266+00:00'::timestamptz, '117.98.62.65', 7.0, 106, NULL, NULL, 25, NULL, false, 108, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (50, '2026-06-01T18:06:42.860190+00:00'::timestamptz, 1, 'P', true, NULL, NULL, 7.5, 61, 1, NULL, 30, NULL, false, 34, true) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (51, '2026-06-01T18:11:30.165541+00:00'::timestamptz, 1, 'P', true, NULL, NULL, 7.0, 60, 1, NULL, 30, NULL, false, 34, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (52, '2026-06-01T18:58:37.068634+00:00'::timestamptz, 1, 'P', true, '2026-06-01T18:58:37.029658+00:00'::timestamptz, '103.37.201.132', 9.0, 61, NULL, NULL, 29, NULL, false, 36, false) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedback" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "score", "adjudicator_id", "confirmer_id", "source_adjudicator_id", "source_team_id", "submitter_id", "ignored", "participant_submitter_id", "private_url") VALUES (53, '2026-06-01T19:01:47.664031+00:00'::timestamptz, 1, 'P', true, '2026-06-01T19:01:47.584895+00:00'::timestamptz, '103.37.201.132', 6.5, 60, NULL, NULL, 29, NULL, false, 36, false) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "adjfeedback_adjudicatorfeedbackquestion" (
    "question_ptr_id" integer NOT NULL,
    "reference" VARCHAR(50) NOT NULL,
    "from_adj" boolean NOT NULL,
    "from_team" boolean NOT NULL,
    PRIMARY KEY ("question_ptr_id")
);
INSERT INTO "adjfeedback_adjudicatorfeedbackquestion" ("question_ptr_id", "reference", "from_adj", "from_team") VALUES (2, 'agree', true, true) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedbackquestion" ("question_ptr_id", "reference", "from_adj", "from_team") VALUES (3, 'comments', true, true) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedbackquestion" ("question_ptr_id", "reference", "from_adj", "from_team") VALUES (4, 'agree', true, true) ON CONFLICT DO NOTHING;
INSERT INTO "adjfeedback_adjudicatorfeedbackquestion" ("question_ptr_id", "reference", "from_adj", "from_team") VALUES (5, 'comments', true, true) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "auth_user" (
    "id" integer NOT NULL,
    "password" VARCHAR(128) NOT NULL,
    "last_login" timestamp with time zone,
    "is_superuser" boolean NOT NULL,
    "username" VARCHAR(150) NOT NULL,
    "first_name" VARCHAR(150) NOT NULL,
    "last_name" VARCHAR(150) NOT NULL,
    "email" VARCHAR(254) NOT NULL,
    "is_staff" boolean NOT NULL,
    "is_active" boolean NOT NULL,
    "date_joined" timestamp with time zone NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (1, 'pbkdf2_sha256$1000000$RRrDBkgFLG1vwi2kHF249v$nT9I+xc6hsS7X9GpuLbgHTGUSVU9ZLrU5OzxauMFYSA=', '2026-06-02T17:19:18.974876+00:00'::timestamptz, true, 'T-Armaan', '', '', 'armaanmahajanbg@gmail.com', true, true, '2026-06-02T17:19:16.246184+00:00'::timestamptz) ON CONFLICT DO NOTHING;
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (8, 'pbkdf2_sha256$1000000$gktVERkIlBuHTHkEFLMHoS$t0aT3uFOzR4ckI5mjK+zgowhBSlm924YseKzcpdRv1w=', '2026-06-05T16:41:48.343313+00:00'::timestamptz, true, 'T-Anuja', '', '', '', true, true, '2026-06-02T17:34:48+00:00'::timestamptz) ON CONFLICT DO NOTHING;
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (2, 'pbkdf2_sha256$1000000$X7hdJLWEnCucZTXaqYo2cy$mvL12ZpsCkx4DzZYzGamzkVOY9FexshMm9Gy3EFbD5M=', NULL, true, 'T-Arjita', '', '', '', true, true, '2026-06-02T17:30:11+00:00'::timestamptz) ON CONFLICT DO NOTHING;
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (7, 'pbkdf2_sha256$1000000$JA1nwszMXhBJ6AC6S5IN27$J5geJbjOA7IOOFJ/VxV8bUUpByddwBfyKOrSObBdhEI=', '2026-06-05T16:46:56.049810+00:00'::timestamptz, true, 'T-Anusha', '', '', '', true, true, '2026-06-02T17:34:16+00:00'::timestamptz) ON CONFLICT DO NOTHING;
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (4, 'pbkdf2_sha256$1000000$YvE8DJMw01mDaWmp8CeK4W$g1f2yWDeQwD1JqoFdwmmdpKn4T5pvgj00Nl7DgOIpsI=', '2026-06-04T16:40:31+00:00'::timestamptz, true, 'T-Goyal', '', '', '', true, true, '2026-06-02T17:32:24+00:00'::timestamptz) ON CONFLICT DO NOTHING;
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (3, 'pbkdf2_sha256$1000000$nFdXxESYYvCyF3um5ode6C$e6ix3buJ6FkC5H44xCdvxjSEgC6q1m7C9l0Nji0cEvI=', NULL, true, 'T-Karunesh', '', '', '', true, true, '2026-06-02T17:31:48+00:00'::timestamptz) ON CONFLICT DO NOTHING;
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (5, 'pbkdf2_sha256$1000000$Qs5j04u41zhbJYwKRLYfpG$aHHqpJ3sOW35WKjnKebkeY+eEQ//1uHkeCE1SxWlbGI=', NULL, true, 'T-Tanvi', '', '', '', true, true, '2026-06-02T17:33:06+00:00'::timestamptz) ON CONFLICT DO NOTHING;
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (9, 'pbkdf2_sha256$1000000$PrNgtcqpf6fLZwoMkepHWY$xebu2QudqOvqRejY2Z6kKo6K13gfx1oH6RjF3bmCxaM=', '2026-06-05T16:39:29+00:00'::timestamptz, true, 'T-Bhavya', '', '', '', true, true, '2026-06-02T17:35:23+00:00'::timestamptz) ON CONFLICT DO NOTHING;
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (10, 'pbkdf2_sha256$1000000$AlXxe8xl9nvdjE6dLkaj98$+402cyIhG9/KbEjqIhqYV1a69iR9lRo9ZvibcQ3xe34=', '2026-06-05T16:39:37+00:00'::timestamptz, true, 'T-Ruchir', '', '', '', true, true, '2026-06-02T17:36:58+00:00'::timestamptz) ON CONFLICT DO NOTHING;
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (15, 'pbkdf2_sha256$1000000$C9FYzPI8ewGi12vYx6pjrQ$hHtFj2nN2wxlVqQvJDLScXst4ZOkzXAlk4dHAg5LgAQ=', '2026-06-05T16:40:57+00:00'::timestamptz, true, 'T-Saanvi', '', '', '', true, true, '2026-06-02T17:40:46+00:00'::timestamptz) ON CONFLICT DO NOTHING;
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (16, 'pbkdf2_sha256$1000000$4avoyvooebwAMK2HGhbbhE$ETUus/01p/oglcphuEaryVG0nk/p6UXWZUJF3uiO7ZI=', '2026-06-05T16:39:43+00:00'::timestamptz, true, 'T-Vaishnavi', '', '', '', true, true, '2026-06-02T17:41:26+00:00'::timestamptz) ON CONFLICT DO NOTHING;
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (12, 'pbkdf2_sha256$1000000$DYdwQnXkGXrFradwFXnSIn$1ufAmL6Q+YC6BOz/1N/hY28aLzepR/zCvf1R7iz6rv4=', NULL, false, 'T-Divija', '', '', '', true, true, '2026-06-02T17:38:46+00:00'::timestamptz) ON CONFLICT DO NOTHING;
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (13, 'pbkdf2_sha256$1000000$yGe0UP9rudiNpYILHKpwlj$zXhmeDGx+vlHvvmddR/hC1LdnUA+9XVcqNW1ijZJ/vQ=', NULL, false, 'T-Arya', '', '', '', true, true, '2026-06-02T17:39:34+00:00'::timestamptz) ON CONFLICT DO NOTHING;
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (14, 'pbkdf2_sha256$1000000$lOehLllGwFKbtrPTbJrDtB$hQxylYGFuaQHLqbMCkdUGZDy/WBBdbIUdDHjFTDynn4=', NULL, false, 'T-Ojus', '', '', '', true, true, '2026-06-02T17:40:18+00:00'::timestamptz) ON CONFLICT DO NOTHING;
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (18, 'pbkdf2_sha256$1000000$jV7rp3zg0cK51vSg2pNHMy$V1VQTnBm6pDKcsF74OD8MhqsQkaWIqBM+su4HPt8u2M=', NULL, false, 'T-Arhaan', '', '', '', true, true, '2026-06-03T04:23:26.819895+00:00'::timestamptz) ON CONFLICT DO NOTHING;
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (17, 'pbkdf2_sha256$1000000$cCZ7wHbo9eVGLI2KoX4bHT$Nu3olW4ir/2SbqZEJRoJLmLG+G3SxnOhHUA4MqAFLbM=', '2026-06-04T16:40:00+00:00'::timestamptz, true, 'T-Rohan', '', '', '', true, true, '2026-06-02T17:42:22+00:00'::timestamptz) ON CONFLICT DO NOTHING;
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (6, 'pbkdf2_sha256$1000000$2eH1HgoZr5OMiZy45CAPfj$ZqPM7egC/P6iosGSBHStQpicO571REEIAWHbCAO7fB8=', '2026-06-06T11:34:40+00:00'::timestamptz, true, 'T-Brinda', '', '', '', true, true, '2026-06-02T17:33:41+00:00'::timestamptz) ON CONFLICT DO NOTHING;
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (11, 'pbkdf2_sha256$1000000$ScxtDc0scVr6njqUqqnBXg$ZEaN8ppnJIaYvcoRbdYvxtGfP4FQzjZjVTWvQYeIHU0=', '2026-06-07T14:19:35+00:00'::timestamptz, true, 'T-Aarya', '', '', '', true, true, '2026-06-02T17:37:59+00:00'::timestamptz) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "authtoken_token" (
    "key" VARCHAR(40) NOT NULL,
    "created" timestamp with time zone NOT NULL,
    "user_id" integer NOT NULL,
    PRIMARY KEY ("key")
);
INSERT INTO "authtoken_token" ("key", "created", "user_id") VALUES ('19a8e627f4c1c7e662841d31d3ee4152cdbeb41a', '2026-05-14T07:08:31.428965+00:00'::timestamptz, 1) ON CONFLICT DO NOTHING;
INSERT INTO "authtoken_token" ("key", "created", "user_id") VALUES ('045852243b79cc958f307bb5dc5829efaf073991', '2026-05-20T17:40:36.934245+00:00'::timestamptz, 2) ON CONFLICT DO NOTHING;
INSERT INTO "authtoken_token" ("key", "created", "user_id") VALUES ('47ffa7db1147aa81902a13c3209fef2ad951a43f', '2026-06-02T17:19:18.965939+00:00'::timestamptz, 1) ON CONFLICT DO NOTHING;
INSERT INTO "authtoken_token" ("key", "created", "user_id") VALUES ('1a74509f9dfabb2046059f9cbcf389603d653595', '2026-06-02T17:30:13.969365+00:00'::timestamptz, 2) ON CONFLICT DO NOTHING;
INSERT INTO "authtoken_token" ("key", "created", "user_id") VALUES ('6f4fde258ebb106ce5cda5bfa10b22aeb4168558', '2026-06-02T17:31:51.272084+00:00'::timestamptz, 3) ON CONFLICT DO NOTHING;
INSERT INTO "authtoken_token" ("key", "created", "user_id") VALUES ('ebd386a955e6882145adb7ff516ea23971ac0b70', '2026-06-02T17:32:26.565185+00:00'::timestamptz, 4) ON CONFLICT DO NOTHING;
INSERT INTO "authtoken_token" ("key", "created", "user_id") VALUES ('ab8ae3894fcbbefd23dcd59b1b8567d0aa9cee14', '2026-06-02T17:33:09.159012+00:00'::timestamptz, 5) ON CONFLICT DO NOTHING;
INSERT INTO "authtoken_token" ("key", "created", "user_id") VALUES ('9717d583208a9a58d68e5a09a0db08288d0c18a5', '2026-06-02T17:33:43.972825+00:00'::timestamptz, 6) ON CONFLICT DO NOTHING;
INSERT INTO "authtoken_token" ("key", "created", "user_id") VALUES ('3cd69a361f91fbb158bd99fb5404f9b0782daa5f', '2026-06-02T17:34:18.963118+00:00'::timestamptz, 7) ON CONFLICT DO NOTHING;
INSERT INTO "authtoken_token" ("key", "created", "user_id") VALUES ('58f979236760c766f954e11f69064f7ff9737329', '2026-06-02T17:34:51.468393+00:00'::timestamptz, 8) ON CONFLICT DO NOTHING;
INSERT INTO "authtoken_token" ("key", "created", "user_id") VALUES ('c96d9bf4eaab5231e08a09be558943be0919c3a8', '2026-06-02T17:35:25.865443+00:00'::timestamptz, 9) ON CONFLICT DO NOTHING;
INSERT INTO "authtoken_token" ("key", "created", "user_id") VALUES ('63339b63f5a7258e0bcfc9ca7893b1ca4806d5bb', '2026-06-02T17:37:00.867018+00:00'::timestamptz, 10) ON CONFLICT DO NOTHING;
INSERT INTO "authtoken_token" ("key", "created", "user_id") VALUES ('9d45f847780395bec26c6c2ef7954b1432645614', '2026-06-02T17:38:01.462902+00:00'::timestamptz, 11) ON CONFLICT DO NOTHING;
INSERT INTO "authtoken_token" ("key", "created", "user_id") VALUES ('26525721750b32258779a88b07d8e9577e4625b0', '2026-06-02T17:38:48.562604+00:00'::timestamptz, 12) ON CONFLICT DO NOTHING;
INSERT INTO "authtoken_token" ("key", "created", "user_id") VALUES ('49729a2eb23bc96cbf50a71d8773c0e5e197731b', '2026-06-02T17:39:36.874111+00:00'::timestamptz, 13) ON CONFLICT DO NOTHING;
INSERT INTO "authtoken_token" ("key", "created", "user_id") VALUES ('d2671696bbf978f3f0277d9b0d83a14982ef4e6e', '2026-06-02T17:40:20.763876+00:00'::timestamptz, 14) ON CONFLICT DO NOTHING;
INSERT INTO "authtoken_token" ("key", "created", "user_id") VALUES ('e78cf1f1abb27b10ff1d0668f4a51a30175fa4a0', '2026-06-02T17:40:49.270057+00:00'::timestamptz, 15) ON CONFLICT DO NOTHING;
INSERT INTO "authtoken_token" ("key", "created", "user_id") VALUES ('5ecf6b07e32abb29b2480a06a50014f8eb89eb2a', '2026-06-02T17:41:29.469392+00:00'::timestamptz, 16) ON CONFLICT DO NOTHING;
INSERT INTO "authtoken_token" ("key", "created", "user_id") VALUES ('14439c13fc49f955511359c392abec0b6c030f5f', '2026-06-02T17:42:24.869301+00:00'::timestamptz, 17) ON CONFLICT DO NOTHING;
INSERT INTO "authtoken_token" ("key", "created", "user_id") VALUES ('4ec18e63b0d48fc9564670d2dc778595dd1c073d', '2026-06-03T04:23:29.115636+00:00'::timestamptz, 18) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "availability_roundavailability" (
    "id" integer NOT NULL,
    "object_id" integer NOT NULL,
    "content_type_id" integer NOT NULL,
    "round_id" integer NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (54, 11, 40, 14) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (55, 12, 40, 14) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (56, 87, 41, 14) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (57, 4, 56, 14) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (58, 13, 40, 15) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (59, 14, 40, 15) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (60, 51, 41, 15) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (61, 59, 41, 15) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (63, 4, 56, 15) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (64, 55, 41, 15) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (65, 54, 41, 15) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (66, 15, 40, 16) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (67, 16, 40, 16) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (68, 87, 41, 16) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (69, 4, 56, 16) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (70, 55, 41, 16) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (71, 104, 41, 1) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (72, 105, 41, 1) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (73, 26, 40, 2) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (74, 27, 40, 2) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (75, 28, 40, 2) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (76, 29, 40, 2) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (77, 106, 41, 2) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (78, 1, 56, 2) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (79, 17, 40, 17) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (80, 18, 40, 17) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (81, 60, 41, 17) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (82, 61, 41, 17) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (83, 4, 56, 17) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (8, 8, 41, 2) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (9, 9, 41, 3) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (11, 2, 56, 2) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (32, 20, 41, 21) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (33, 21, 41, 24) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (34, 18, 41, 22) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (35, 3, 56, 21) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (36, 22, 41, 26) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (37, 3, 56, 24) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (38, 20, 41, 26) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (40, 3, 56, 22) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (16, 3, 40, 24) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (17, 6, 40, 24) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (18, 3, 40, 22) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (19, 5, 40, 24) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (20, 3, 40, 26) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (21, 4, 40, 24) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (22, 6, 40, 26) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (23, 5, 40, 26) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (24, 4, 40, 26) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (25, 5, 40, 22) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (26, 6, 40, 22) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (27, 4, 40, 22) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (28, 3, 40, 21) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (29, 6, 40, 21) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (30, 5, 40, 21) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (31, 4, 40, 21) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (41, 3, 56, 26) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (45, 1, 56, 29) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (47, 9, 40, 29) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (48, 10, 40, 29) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (49, 35, 41, 29) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (1, 1, 40, 1) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (2, 2, 40, 1) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (3, 5, 41, 1) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (4, 1, 56, 1) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (5, 3, 40, 1) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (6, 4, 40, 1) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (7, 5, 40, 11) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (10, 51, 41, 11) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (12, 4, 56, 11) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (39, 7, 40, 12) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (42, 57, 41, 12) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (43, 56, 41, 12) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (44, 53, 41, 12) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (46, 55, 41, 12) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (50, 50, 41, 13) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (51, 51, 41, 13) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (52, 4, 56, 13) ON CONFLICT DO NOTHING;
INSERT INTO "availability_roundavailability" ("id", "object_id", "content_type_id", "round_id") VALUES (53, 54, 41, 13) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "breakqual_breakcategory" (
    "id" integer NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "slug" VARCHAR(50) NOT NULL,
    "seq" integer NOT NULL,
    "break_size" integer NOT NULL,
    "is_general" boolean NOT NULL,
    "priority" integer NOT NULL,
    "rule" VARCHAR(25) NOT NULL,
    "tournament_id" integer NOT NULL,
    "limit" integer NOT NULL,
    "reserve_size" integer NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "breakqual_breakingteam" (
    "id" integer NOT NULL,
    "rank" integer NOT NULL,
    "break_rank" integer,
    "remark" VARCHAR(1),
    "break_category_id" integer NOT NULL,
    "team_id" integer NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "checkins_debateidentifier" (
    "identifier_ptr_id" integer NOT NULL,
    "debate_id" integer NOT NULL,
    PRIMARY KEY ("identifier_ptr_id")
);
INSERT INTO "checkins_debateidentifier" ("identifier_ptr_id", "debate_id") VALUES (95, 2) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_debateidentifier" ("identifier_ptr_id", "debate_id") VALUES (96, 5) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_debateidentifier" ("identifier_ptr_id", "debate_id") VALUES (97, 8) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "checkins_event" (
    "id" integer NOT NULL,
    "time" timestamp with time zone NOT NULL,
    "identifier_id" integer NOT NULL,
    "tournament_id" integer NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "checkins_identifier" (
    "id" integer NOT NULL,
    "barcode" VARCHAR(20) NOT NULL,
    "polymorphic_ctype_id" integer,
    PRIMARY KEY ("id")
);
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (7, '607758', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (8, '391721', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (9, '247327', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (1, '170727', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (2, '357370', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (3, '418183', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (4, '362702', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (5, '134342', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (6, '603914', 28) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (10, '480556', 28) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (11, '371625', 28) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (20, '617122', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (21, '250339', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (22, '805258', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (23, '259381', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (24, '229777', 28) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (25, '197946', 28) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (12, '225707', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (13, '552125', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (14, '402476', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (15, '684538', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (16, '764943', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (17, '715335', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (18, '103388', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (19, '639504', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (26, '886092', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (33, '412437', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (34, '444470', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (35, '224036', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (36, '574917', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (37, '903523', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (38, '424710', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (39, '377926', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (27, '620016', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (28, '821776', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (29, '903842', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (30, '195352', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (31, '189422', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (32, '713902', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (40, '704003', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (41, '127218', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (42, '709251', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (43, '180745', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (44, '377244', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (45, '296464', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (46, '798332', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (47, '497027', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (48, '463355', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (49, '501054', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (50, '515402', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (51, '588666', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (52, '384907', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (53, '477790', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (54, '611478', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (55, '981532', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (56, '941282', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (57, '381517', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (58, '705787', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (59, '517188', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (60, '334681', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (61, '800458', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (62, '864543', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (63, '106675', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (64, '841931', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (65, '333990', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (66, '603864', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (67, '875056', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (68, '129349', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (69, '316215', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (70, '777900', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (71, '265269', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (72, '841428', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (73, '830575', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (74, '342529', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (75, '335336', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (76, '558041', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (77, '105456', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (78, '207982', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (79, '579414', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (80, '473896', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (81, '975787', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (82, '226934', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (83, '983778', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (84, '174801', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (85, '616099', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (86, '170561', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (87, '840992', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (88, '114967', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (89, '562735', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (90, '968660', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (91, '551405', 28) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (92, '857392', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (93, '354305', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (94, '780757', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (95, '618801', 26) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (96, '406283', 26) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (97, '299602', 26) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (98, '258818', 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_identifier" ("id", "barcode", "polymorphic_ctype_id") VALUES (99, '983831', 27) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "checkins_personidentifier" (
    "identifier_ptr_id" integer NOT NULL,
    "person_id" integer NOT NULL,
    PRIMARY KEY ("identifier_ptr_id")
);
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (1, 1) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (2, 2) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (3, 3) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (4, 4) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (5, 5) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (7, 7) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (8, 8) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (10, 7) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (11, 8) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (12, 9) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (13, 10) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (14, 11) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (15, 12) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (16, 13) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (17, 14) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (18, 15) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (19, 16) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (9, 9) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (20, 18) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (21, 19) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (22, 20) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (23, 21) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (26, 22) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (33, 29) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (34, 30) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (35, 31) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (36, 32) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (37, 33) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (38, 34) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (39, 35) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (24, 21) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (25, 22) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (27, 24) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (28, 25) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (29, 26) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (30, 27) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (31, 28) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (32, 29) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (6, 6) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (40, 37) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (41, 38) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (42, 39) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (43, 40) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (44, 41) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (45, 42) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (46, 43) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (47, 44) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (48, 45) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (49, 46) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (50, 47) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (51, 48) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (52, 49) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (53, 50) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (54, 51) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (55, 52) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (56, 53) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (57, 54) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (58, 55) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (59, 56) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (60, 57) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (61, 58) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (62, 59) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (63, 60) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (64, 61) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (65, 62) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (66, 63) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (67, 64) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (68, 65) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (69, 66) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (70, 67) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (71, 68) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (72, 69) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (73, 70) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (74, 71) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (75, 72) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (76, 73) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (77, 74) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (78, 75) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (79, 76) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (80, 77) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (81, 78) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (82, 79) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (83, 80) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (84, 81) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (85, 82) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (86, 83) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (87, 84) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (88, 85) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (89, 86) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (90, 87) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (92, 92) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (93, 93) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (94, 94) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (98, 104) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_personidentifier" ("identifier_ptr_id", "person_id") VALUES (99, 105) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "checkins_venueidentifier" (
    "identifier_ptr_id" integer NOT NULL,
    "venue_id" integer NOT NULL,
    PRIMARY KEY ("identifier_ptr_id")
);
INSERT INTO "checkins_venueidentifier" ("identifier_ptr_id", "venue_id") VALUES (6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_venueidentifier" ("identifier_ptr_id", "venue_id") VALUES (7, 2) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_venueidentifier" ("identifier_ptr_id", "venue_id") VALUES (8, 3) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_venueidentifier" ("identifier_ptr_id", "venue_id") VALUES (91, 4) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_venueidentifier" ("identifier_ptr_id", "venue_id") VALUES (10, 1) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_venueidentifier" ("identifier_ptr_id", "venue_id") VALUES (11, 2) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_venueidentifier" ("identifier_ptr_id", "venue_id") VALUES (24, 3) ON CONFLICT DO NOTHING;
INSERT INTO "checkins_venueidentifier" ("identifier_ptr_id", "venue_id") VALUES (25, 4) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "dashboard_settings" (
    "key" text NOT NULL,
    "value" jsonb NOT NULL,
    "updated_at" timestamp with time zone NOT NULL,
    PRIMARY KEY ("key")
);
INSERT INTO "dashboard_settings" ("key", "value", "updated_at") VALUES ('tabs_roster', ARRAY['Anusha','Armaan','Brinda'], '2026-06-08T17:06:15.700000+00:00'::timestamptz) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "django_admin_log" (
    "id" integer NOT NULL,
    "action_time" timestamp with time zone NOT NULL,
    "object_id" text,
    "object_repr" VARCHAR(200) NOT NULL,
    "action_flag" smallint NOT NULL,
    "change_message" text NOT NULL,
    "content_type_id" integer,
    "user_id" integer NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (1, '2026-06-02T17:28:00.145604+00:00'::timestamptz, '11', 'T-Arjita (bpdjune26)', 2, '[{"changed": {"fields": ["Name", "Permissions"]}}]', 59, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (2, '2026-06-02T17:28:33.491403+00:00'::timestamptz, '11', 'T-Arjita (bpdjune26)', 3, '', 59, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (3, '2026-06-02T17:30:13.970923+00:00'::timestamptz, '2', 'T-Arjita', 1, '[{"added": {}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (4, '2026-06-02T17:31:51.273822+00:00'::timestamptz, '3', 'T-Karunesh', 1, '[{"added": {}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (5, '2026-06-02T17:31:59.868296+00:00'::timestamptz, '3', 'T-Karunesh', 2, '[]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (6, '2026-06-02T17:32:26.566912+00:00'::timestamptz, '4', 'T-Goyal', 1, '[{"added": {}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (38, '2026-06-04T16:44:50.868499+00:00'::timestamptz, '3', 'T-Karunesh', 2, '[{"changed": {"fields": ["Superuser status"]}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (39, '2026-06-04T16:45:01.768100+00:00'::timestamptz, '17', 'T-Rohan', 2, '[{"changed": {"fields": ["Superuser status"]}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (40, '2026-06-04T16:45:10.274285+00:00'::timestamptz, '5', 'T-Tanvi', 2, '[{"changed": {"fields": ["Superuser status"]}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (41, '2026-06-04T17:14:37.866288+00:00'::timestamptz, '2', '[apdjune26] IITR 2', 2, '[{"changed": {"name": "speaker", "object": "OJus_D1", "fields": ["Name"]}}, {"identity": {"ip": "103.252.25.60"}}]', 40, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (42, '2026-06-04T17:15:59.279338+00:00'::timestamptz, '1', '[apd june] Round 1', 2, '[{"changed": {"fields": ["Completed", "Draw status", "Motions status"]}}, {"identity": {"ip": "103.252.25.60"}}]', 53, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (43, '2026-06-04T17:16:16.453679+00:00'::timestamptz, '2', '[apd june] Round 2', 2, '[{"changed": {"fields": ["Draw status", "Motions status"]}}, {"identity": {"ip": "103.252.25.60"}}]', 53, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (44, '2026-06-05T16:10:51.293926+00:00'::timestamptz, '1', '[apd june] Round 1', 3, '
IP: 103.252.25.53', 53, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (45, '2026-06-05T16:11:13.458159+00:00'::timestamptz, '29', '[apd june] Round 1', 1, '[{"added": {}}, {"identity": {"ip": "103.252.25.53"}}]', 53, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (46, '2026-06-05T16:40:35.142607+00:00'::timestamptz, '8', 'T-Anuja', 2, '[{"changed": {"fields": ["Superuser status"]}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (47, '2026-06-05T16:40:45.564224+00:00'::timestamptz, '7', 'T-Anusha', 2, '[{"changed": {"fields": ["Superuser status"]}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (48, '2026-06-05T16:40:54.063698+00:00'::timestamptz, '9', 'T-Bhavya', 2, '[{"changed": {"fields": ["Superuser status"]}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (73, '2026-06-05T17:45:25.592525+00:00'::timestamptz, '1', 'Motion', 3, '
IP: 103.252.25.53', 33, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (74, '2026-06-05T17:45:56.361346+00:00'::timestamptz, '1', '[apdjune26] IITR 1', 3, '
IP: 103.252.25.53', 40, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (7, '2026-06-02T17:32:42.066600+00:00'::timestamptz, '4', 'T-Goyal', 2, '[]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (8, '2026-06-02T17:33:09.161946+00:00'::timestamptz, '5', 'T-Tanvi', 1, '[{"added": {}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (9, '2026-06-02T17:33:18.909173+00:00'::timestamptz, '5', 'T-Tanvi', 2, '[]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (10, '2026-06-02T17:33:43.974870+00:00'::timestamptz, '6', 'T-Brinda', 1, '[{"added": {}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (11, '2026-06-02T17:33:54.563505+00:00'::timestamptz, '6', 'T-Brinda', 2, '[]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (12, '2026-06-02T17:34:18.964886+00:00'::timestamptz, '7', 'T-Anusha', 1, '[{"added": {}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (13, '2026-06-02T17:34:25.969007+00:00'::timestamptz, '7', 'T-Anusha', 2, '[]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (14, '2026-06-02T17:34:51.469998+00:00'::timestamptz, '8', 'T-Anuja', 1, '[{"added": {}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (15, '2026-06-02T17:35:06.488170+00:00'::timestamptz, '8', 'T-Anuja', 2, '[]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (16, '2026-06-02T17:35:25.867381+00:00'::timestamptz, '9', 'T-Bhavya', 1, '[{"added": {}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (17, '2026-06-02T17:36:09.290298+00:00'::timestamptz, '9', 'T-Bhavya', 2, '[]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (18, '2026-06-02T17:37:00.868655+00:00'::timestamptz, '10', 'T-Ruchir', 1, '[{"added": {}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (49, '2026-06-05T16:41:07.442661+00:00'::timestamptz, '10', 'T-Ruchir', 2, '[{"changed": {"fields": ["Superuser status"]}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (50, '2026-06-05T16:41:23.241122+00:00'::timestamptz, '15', 'T-Saanvi', 2, '[{"changed": {"fields": ["Superuser status"]}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (51, '2026-06-05T16:41:30.954683+00:00'::timestamptz, '16', 'T-Vaishnavi', 2, '[{"changed": {"fields": ["Superuser status"]}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (52, '2026-06-05T16:41:31.754929+00:00'::timestamptz, '16', 'T-Vaishnavi', 2, '[]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (53, '2026-06-05T17:20:16.645530+00:00'::timestamptz, '19', 'Ruchir (IITR)', 2, '[{"changed": {"fields": ["Name"]}}, {"identity": {"ip": "103.252.25.53"}}]', 41, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (54, '2026-06-05T17:20:34.950960+00:00'::timestamptz, '18', 'Saanvi (IITR)', 2, '[{"changed": {"fields": ["Name"]}}, {"identity": {"ip": "103.252.25.53"}}]', 41, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (55, '2026-06-05T17:21:40.254097+00:00'::timestamptz, '3', '[bpdjune26] IITR test_armaan', 2, '[{"changed": {"name": "speaker", "object": "Armaan_d1", "fields": ["Name"]}}, {"changed": {"name": "speaker", "object": "Karunesh_d1", "fields": ["Name"]}}, {"identity": {"ip": "103.252.25.53"}}]', 40, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (56, '2026-06-05T17:22:42.351720+00:00'::timestamptz, '6', 'motion', 3, '
IP: 103.252.25.53', 33, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (19, '2026-06-02T17:37:08.478337+00:00'::timestamptz, '10', 'T-Ruchir', 2, '[]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (20, '2026-06-02T17:38:01.476377+00:00'::timestamptz, '11', 'T-Aarya', 1, '[{"added": {}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (21, '2026-06-02T17:38:06.550688+00:00'::timestamptz, '11', 'T-Aarya', 2, '[]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (22, '2026-06-02T17:38:06.649465+00:00'::timestamptz, '11', 'T-Aarya', 2, '[]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (23, '2026-06-02T17:38:48.564225+00:00'::timestamptz, '12', 'T-Divija', 1, '[{"added": {}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (24, '2026-06-02T17:39:00.676230+00:00'::timestamptz, '12', 'T-Divija', 2, '[]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (25, '2026-06-02T17:39:36.877307+00:00'::timestamptz, '13', 'T-Arya', 1, '[{"added": {}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (26, '2026-06-02T17:39:40.652859+00:00'::timestamptz, '13', 'T-Arya', 2, '[]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (27, '2026-06-02T17:40:20.765488+00:00'::timestamptz, '14', 'T-Ojus', 1, '[{"added": {}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (28, '2026-06-02T17:40:25.547578+00:00'::timestamptz, '14', 'T-Ojus', 2, '[]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (29, '2026-06-02T17:40:49.272032+00:00'::timestamptz, '15', 'T-Saanvi', 1, '[{"added": {}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (30, '2026-06-02T17:41:03.361365+00:00'::timestamptz, '15', 'T-Saanvi', 2, '[]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (31, '2026-06-02T17:41:29.474008+00:00'::timestamptz, '16', 'T-Vaishnavi', 1, '[{"added": {}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (32, '2026-06-02T17:42:05.180309+00:00'::timestamptz, '16', 'T-Vaishnavi', 2, '[]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (33, '2026-06-02T17:42:24.870970+00:00'::timestamptz, '17', 'T-Rohan', 1, '[{"added": {}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (34, '2026-06-02T17:42:46.771405+00:00'::timestamptz, '17', 'T-Rohan', 2, '[]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (35, '2026-06-02T17:53:20.369313+00:00'::timestamptz, '2', 'T-Arjita', 2, '[{"changed": {"fields": ["Superuser status"]}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (36, '2026-06-03T04:23:29.117446+00:00'::timestamptz, '18', 'T-Arhaan', 1, '[{"added": {}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (37, '2026-06-04T16:44:41.771823+00:00'::timestamptz, '4', 'T-Goyal', 2, '[{"changed": {"fields": ["Superuser status"]}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (57, '2026-06-05T17:34:11.149744+00:00'::timestamptz, '21', '[bpd june] Round 1', 2, '[{"changed": {"fields": ["Completed", "Draw status", "Motions status", "Starts at"]}}, {"identity": {"ip": "103.252.25.53"}}]', 53, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (58, '2026-06-05T17:34:31.287903+00:00'::timestamptz, '22', '[bpd june] Round 2', 2, '[{"changed": {"fields": ["Draw status", "Motions status", "Starts at"]}}, {"identity": {"ip": "103.252.25.53"}}]', 53, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (59, '2026-06-05T17:35:09.516970+00:00'::timestamptz, '2', '[apdjune26/R2/2] IITR 1 vs IITR 2', 3, '
IP: 103.252.25.53', 29, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (60, '2026-06-05T17:35:28.163331+00:00'::timestamptz, '7', '[bpdjune26/R2/7] IITR theres protein in therapy vs IITR xyz vs IITR the great vs IITR test_armaan', 3, '
IP: 103.252.25.53', 29, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (61, '2026-06-05T17:35:37.948027+00:00'::timestamptz, '6', '[bpdjune26/R6/6] IITR test_armaan vs IITR the great vs IITR xyz vs IITR theres protein in therapy', 3, '
IP: 103.252.25.53', 29, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (62, '2026-06-05T17:35:45.047206+00:00'::timestamptz, '5', '[bpdjune26/R4/5] IITR the great vs IITR xyz vs IITR theres protein in therapy vs IITR test_armaan', 3, '
IP: 103.252.25.53', 29, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (63, '2026-06-05T17:35:54.443630+00:00'::timestamptz, '4', '[bpdjune26/R1/4] IITR test_armaan vs IITR xyz vs IITR theres protein in therapy vs IITR the great', 3, '
IP: 103.252.25.53', 29, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (64, '2026-06-05T17:36:01.570783+00:00'::timestamptz, '3', '[apdjune26/R3/3] IITR 1 vs IITR 2', 3, '
IP: 103.252.25.53', 29, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (65, '2026-06-05T17:39:59.709831+00:00'::timestamptz, '5', 'swiftly: Round 2', 3, '
IP: 103.252.25.60', 34, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (66, '2026-06-05T17:41:29.182466+00:00'::timestamptz, '2', 'um: Round 2', 3, '
IP: 103.252.25.53', 34, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (67, '2026-06-05T17:41:35.471981+00:00'::timestamptz, '3', 'umm: Round 2', 3, '
IP: 103.252.25.53', 34, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (68, '2026-06-05T17:41:42.263280+00:00'::timestamptz, '4', 'ummm: Round 2', 3, '
IP: 103.252.25.53', 34, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (69, '2026-06-05T17:41:59.568827+00:00'::timestamptz, '5', 'THBT taylor does an india tour', 3, '
IP: 103.252.25.53', 33, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (70, '2026-06-05T17:45:05.955989+00:00'::timestamptz, '4', 'kadda', 3, '
IP: 103.252.25.53', 33, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (71, '2026-06-05T17:45:13.659214+00:00'::timestamptz, '3', 'pinku ki pinki', 3, '
IP: 103.252.25.53', 33, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (72, '2026-06-05T17:45:20.223197+00:00'::timestamptz, '2', 'gay that or son daughter', 3, '
IP: 103.252.25.53', 33, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (75, '2026-06-05T17:46:06.284841+00:00'::timestamptz, '2', '[apdjune26] IITR 2', 3, '
IP: 103.252.25.53', 40, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (76, '2026-06-05T17:47:05.968947+00:00'::timestamptz, '3', '[bpdjune26] IITR test_armaan', 3, '
IP: 103.252.25.60', 40, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (77, '2026-06-05T17:47:15.533938+00:00'::timestamptz, '6', '[bpdjune26] IITR the great', 3, '
IP: 103.252.25.60', 40, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (78, '2026-06-05T17:47:26.164580+00:00'::timestamptz, '5', '[bpdjune26] IITR theres protein in therapy', 3, '
IP: 103.252.25.60', 40, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (79, '2026-06-05T17:48:51.039279+00:00'::timestamptz, '4', '[bpdjune26] IITR xyz', 3, '
IP: 103.252.25.60', 40, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (80, '2026-06-06T11:41:21.816473+00:00'::timestamptz, '6', 'T-Brinda', 2, '[{"changed": {"fields": ["Superuser status"]}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (81, '2026-06-06T12:04:44.976176+00:00'::timestamptz, '29', '[apd june] Round 1', 2, '[{"changed": {"fields": ["Completed", "Draw status", "Silent", "Motions status"]}}, {"identity": {"ip": "103.252.25.53"}}]', 53, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (82, '2026-06-07T14:19:47.457563+00:00'::timestamptz, '11', 'T-Aarya', 2, '[{"changed": {"fields": ["Superuser status"]}}]', 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (83, '2026-06-10T16:14:36.115055+00:00'::timestamptz, '9', '[apdjune26/R1/9] IITR round_1 gov vs IITR round_1 opp', 3, '
IP: 103.252.25.55', 29, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (84, '2026-06-10T16:16:01.308387+00:00'::timestamptz, '29', '[apd june] Round 1', 2, '[{"changed": {"fields": ["Draw status", "Motions status"]}}, {"identity": {"ip": "103.252.25.48"}}]', 53, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (85, '2026-06-10T16:27:00.684093+00:00'::timestamptz, '8', '[apdjune26] IITR round_1 gov', 3, '
IP: 103.252.25.55', 40, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (86, '2026-06-10T16:27:12.135718+00:00'::timestamptz, '7', '[apdjune26] IITR round_1 opp', 3, '
IP: 103.252.25.55', 40, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (87, '2026-06-01T18:09:08.414754+00:00'::timestamptz, '50', 'Feedback from IITR 13 on Neelansh submitted at 2026-06-01T18:06:42.860190+00:00 (version 1)', 2, '[{"added": {"name": "answer", "object": "Answer object (94)"}}, {"added": {"name": "answer", "object": "Answer object (95)"}}, {"identity": {"ip": "103.252.25.53"}}]', 18, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (88, '2026-06-01T18:11:30.173040+00:00'::timestamptz, '51', 'Feedback from IITR 13 on Aarya submitted at 2026-06-01T18:11:30.165541+00:00 (version 1)', 1, '[{"added": {}}, {"identity": {"ip": "103.252.25.53"}}]', 18, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (89, '2026-06-01T18:12:15.468240+00:00'::timestamptz, '51', 'Feedback from IITR 13 on Aarya submitted at 2026-06-01T18:11:30.165541+00:00 (version 1)', 2, '[{"added": {"name": "answer", "object": "Answer object (96)"}}, {"added": {"name": "answer", "object": "Answer object (97)"}}, {"identity": {"ip": "103.252.25.60"}}]', 18, 1) ON CONFLICT DO NOTHING;
INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (90, '2026-06-01T18:21:25.074230+00:00'::timestamptz, '17', '[Debsoc APD May 26] Round 7', 2, '[{"changed": {"fields": ["Silent"]}}, {"identity": {"ip": "103.252.25.53"}}]', 53, 1) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "django_summernote_attachment" (
    "id" integer NOT NULL,
    "name" VARCHAR(255),
    "file" VARCHAR(100) NOT NULL,
    "uploaded" timestamp with time zone NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "django_summernote_attachment" ("id", "name", "file", "uploaded") VALUES (1, 'image.png', 'django-summernote/2026-05-20/de108dd9-37a1-4e13-ad10-8d673df10366.png', '2026-05-20T13:14:10.736304+00:00'::timestamptz) ON CONFLICT DO NOTHING;
INSERT INTO "django_summernote_attachment" ("id", "name", "file", "uploaded") VALUES (2, 'adj.jpeg', 'django-summernote/2026-05-20/68d5ab0a-9a9e-4b9e-a443-660328691d2a.jpeg', '2026-05-20T13:14:26.450652+00:00'::timestamptz) ON CONFLICT DO NOTHING;
INSERT INTO "django_summernote_attachment" ("id", "name", "file", "uploaded") VALUES (3, 'adj.jpeg', 'django-summernote/2026-05-20/99dbc86b-2fde-4288-80d0-f39dd6d664c9.jpeg', '2026-05-20T13:14:41.912068+00:00'::timestamptz) ON CONFLICT DO NOTHING;
INSERT INTO "django_summernote_attachment" ("id", "name", "file", "uploaded") VALUES (4, 'adj.jpeg', 'django-summernote/2026-05-20/20332124-4ee1-42ea-8a36-ef7246dc4781.jpeg', '2026-05-20T13:14:45.416073+00:00'::timestamptz) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "draw_teamsideallocation" (
    "id" integer NOT NULL,
    "round_id" integer NOT NULL,
    "team_id" integer NOT NULL,
    "side" integer NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "dynamic_preferences_globalpreferencemodel" (
    "id" integer NOT NULL,
    "section" VARCHAR(150),
    "name" VARCHAR(150) NOT NULL,
    "raw_value" text,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "jet_bookmark" (
    "id" integer NOT NULL,
    "url" VARCHAR(200) NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "user_id" integer,
    "date_add" timestamp with time zone NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "jet_pinnedapplication" (
    "id" integer NOT NULL,
    "app_label" VARCHAR(255) NOT NULL,
    "user_id" integer,
    "date_add" timestamp with time zone NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "motions_debateteammotionpreference" (
    "id" integer NOT NULL,
    "preference" integer NOT NULL,
    "ballot_submission_id" integer NOT NULL,
    "debate_team_id" integer NOT NULL,
    "motion_id" integer NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "motions_motion" (
    "id" integer NOT NULL,
    "text" text NOT NULL,
    "reference" VARCHAR(100) NOT NULL,
    "info_slide" text NOT NULL,
    "tournament_id" integer NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "motions_motion" ("id", "text", "reference", "info_slide", "tournament_id") VALUES (5, 'That we would destroy the painting', 'Expedition 33 :)', '<p>There is a painting in which a world exists, inhabited by people, animals, and other creatures. You are its painter. It was created ten years ago, and the people within it have advanced to a modern level of civilisation. Recently, you realised that the painting is sustained by your life, and at this rate, you will die within the next decade. Destroying the painting would stop it from draining your life force, but everything inside it could never be recreated.</p>', 2) ON CONFLICT DO NOTHING;
INSERT INTO "motions_motion" ("id", "text", "reference", "info_slide", "tournament_id") VALUES (7, 'This House believes that the European Union should prioritize strategic autonomy through initiatives like ReArm Europe over continued reliance on NATO.', 'Atmanirbhar Sarkaar', '<p>&nbsp;ReArm Europe is a European Union defense initiative launched in 2025, aiming</p><p>to strengthen Europe''s military capabilities. It includes joint procurement,</p><p>increased national defense spending, and investment in European defense</p><p>industries. The plan seeks to reduce dependence on U.S. military support and</p><p>enhance Europe''s ability to respond independently to security threats.</p>', 1) ON CONFLICT DO NOTHING;
INSERT INTO "motions_motion" ("id", "text", "reference", "info_slide", "tournament_id") VALUES (6, 'This House Believes That the preferred tactics of deplatforming by progressive movements has done more harm than good.', 'All opinions don''t deserve a mic?', '<p>Deplatforming is the action or practice of preventing someone holding views regarded as unacceptable or offensive from contributing or having a platform (e.g. removing them from a public debate or forum).</p>', 2) ON CONFLICT DO NOTHING;
INSERT INTO "motions_motion" ("id", "text", "reference", "info_slide", "tournament_id") VALUES (3, 'This House Opposes the rise of Tourism in Religious Cities.', '4 dhaam yatra', '<p><span style="font-size: 1rem;">In the recent decades India’s religious cities like Varanasi, Haridwar, Badrinath, Kedarnath and Amritsar have attracted many domestic and international pilgrims.</span></p>', 2) ON CONFLICT DO NOTHING;
INSERT INTO "motions_motion" ("id", "text", "reference", "info_slide", "tournament_id") VALUES (4, 'This House would choose to be a human rather than being a ghost.', 'Life is worth it?', '<p>For the purposes of this debate, a ghost is invisible and can wander in the world, seeing things happening but without participating. The lifespan of a ghost is similar to that of a human. You are an average human that have just died and is now given a choice between reborning as a random human baby with all your memories wiped out, and keeping all your memories and living as a ghost.</p><div><br></div>', 2) ON CONFLICT DO NOTHING;
INSERT INTO "motions_motion" ("id", "text", "reference", "info_slide", "tournament_id") VALUES (1, 'This house as BRICS would explicitly position themselves against the G7.', 'Seven Deadly Sins', '<p>BRICS is an acronym that represents a group of five major emerging economies: Brazil, Russia, India, China, South Africa and recently included Argentina, Egypt, Ethiopia, Iran, Saudi Arabia and the United Arab Emirates. These countries are known for their significant influence on regional and global affairs due to their large populations, substantial landmass, and rapidly growing economies.&nbsp;</p><p>The Group of Seven, commonly known as the G7, is an intergovernmental organization consisting of seven of the world''s most advanced and economically powerful democracies. The member countries of the G7 are: Canada, France, Germany, Italy, Japan, United Kingdom, United States.</p>', 1) ON CONFLICT DO NOTHING;
INSERT INTO "motions_motion" ("id", "text", "reference", "info_slide", "tournament_id") VALUES (8, 'This house believes that Bangladesh should focus on negotiating bilateral trade agreements (I.E. Bangladesh-Singapore, Bangladesh-Cambodia etc.) over large, regional agreements (I.E. RCEP, BRICS etc.)', 'Tariff-ic Choice', '<p>The RCEP is an economic bloc mostly consisting of Asian and Australasian countries who trade with each other under duty-free conditions, expanding the member country products to larger, more stable markets.The pre-requisite of accessing larger markets is that you have to open your market up for other members as well.&nbsp;</p><p>The BRIC (Brazil, Russia, India, China) is an economic bloc mostly consisting of the four countries who&nbsp; are currently looking to create alternatives for the dollar economy, so to aid various other countries within its umbrella to shift away from dependence on the dollar. Recently, BRICs endorsed Saudi Arabia, Iran, United Arab Emirates, Egypt, Ethiopia and Argentina to join the bloc.</p><p>Bangladesh wanted and lobbied to join both.</p>', 1) ON CONFLICT DO NOTHING;
INSERT INTO "motions_motion" ("id", "text", "reference", "info_slide", "tournament_id") VALUES (9, 'This House supports the establishment of a common currency among BRICS countries', 'Money Heist', '', 2) ON CONFLICT DO NOTHING;
INSERT INTO "motions_motion" ("id", "text", "reference", "info_slide", "tournament_id") VALUES (2, 'This House prefers a world without religious marriage', 'Shaadi Mubarak', '<p>Infoslide: Religious marriage is a form of marriage that is conducted, recognized, and</p><p>often solemnized according to the rules, traditions, and customs of a</p><p>particular religion. While a religious marriage can also be legally recognized</p><p>by the state in many countries (especially when the officiant is licensed), in</p><p>some places, it must be registered separately with civil authorities to be</p><p>legally binding.</p>', 2) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "motions_roundmotion" (
    "id" integer NOT NULL,
    "seq" integer NOT NULL,
    "motion_id" integer NOT NULL,
    "round_id" integer NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "motions_roundmotion" ("id", "seq", "motion_id", "round_id") VALUES (1, 1, 1, 1) ON CONFLICT DO NOTHING;
INSERT INTO "motions_roundmotion" ("id", "seq", "motion_id", "round_id") VALUES (2, 1, 2, 11) ON CONFLICT DO NOTHING;
INSERT INTO "motions_roundmotion" ("id", "seq", "motion_id", "round_id") VALUES (3, 1, 3, 12) ON CONFLICT DO NOTHING;
INSERT INTO "motions_roundmotion" ("id", "seq", "motion_id", "round_id") VALUES (4, 1, 4, 13) ON CONFLICT DO NOTHING;
INSERT INTO "motions_roundmotion" ("id", "seq", "motion_id", "round_id") VALUES (5, 1, 5, 14) ON CONFLICT DO NOTHING;
INSERT INTO "motions_roundmotion" ("id", "seq", "motion_id", "round_id") VALUES (6, 1, 6, 15) ON CONFLICT DO NOTHING;
INSERT INTO "motions_roundmotion" ("id", "seq", "motion_id", "round_id") VALUES (8, 1, 8, 2) ON CONFLICT DO NOTHING;
INSERT INTO "motions_roundmotion" ("id", "seq", "motion_id", "round_id") VALUES (9, 1, 9, 17) ON CONFLICT DO NOTHING;
INSERT INTO "motions_roundmotion" ("id", "seq", "motion_id", "round_id") VALUES (7, 1, 7, 29) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "notifications_bulknotification" (
    "id" integer NOT NULL,
    "event" VARCHAR(20) NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    "round_id" integer,
    "tournament_id" integer NOT NULL,
    "body_template" text,
    "subject_template" text,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "notifications_emailstatus" (
    "id" integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    "event" VARCHAR(20) NOT NULL,
    "data" jsonb,
    "email_id" integer NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "notifications_participantwebpushdevice" (
    "webpushdevice_ptr_id" integer NOT NULL,
    "language" VARCHAR(10) NOT NULL,
    "participant_id" integer NOT NULL,
    "tournament_id" integer NOT NULL,
    PRIMARY KEY ("webpushdevice_ptr_id")
);

CREATE TABLE IF NOT EXISTS "notifications_sentmessage" (
    "id" integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    "method" VARCHAR(1) NOT NULL,
    "recipient_id" integer,
    "context" jsonb,
    "email" VARCHAR(254),
    "notification_id" integer NOT NULL,
    "message_id" VARCHAR(254),
    "hook_id" VARCHAR(16),
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "options_tournamentpreferencemodel" (
    "id" integer NOT NULL,
    "section" VARCHAR(150),
    "name" VARCHAR(150) NOT NULL,
    "raw_value" text,
    "instance_id" integer NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (29, 'draw_rules', 'bp_pullup_distribution', 'anywhere', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (31, 'draw_rules', 'bp_renyi_order', '1.0', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (23, 'draw_rules', 'draw_odd_bracket', 'pullup_top', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (10, 'scoring', 'teamscore_includes_ghosts', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (62, 'standings', 'team_standings_precedence', 'wins//speaks_sum//margin_avg', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (77, 'tab_release', 'ballots_released', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (107, 'public_features', 'public_record', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (148, 'registration', 'reg_team_fields', 'emoji,use_institution_prefix', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (149, 'registration', 'reg_institution_fields', NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (150, 'registration', 'reg_speaker_fields', 'email', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (151, 'registration', 'reg_adjudicator_fields', 'email', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (152, 'registration', 'institution_registration', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (153, 'registration', 'institution_participant_registration', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (154, 'registration', 'reg_institution_slots', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (155, 'registration', 'reg_institution_slot_transfers', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (156, 'registration', 'open_team_registration', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (157, 'registration', 'open_adj_registration', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (159, 'registration', 'registration_confirmation', 'never', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (166, 'registration', 'slots_allocated_email_body', '<p>Hi {{ USER }},</p><p>Your institution {{ INSTITUTION }} has been allocated {{ TEAMS_ALLOCATED }} team slot(s) and {{ ADJUDICATORS_ALLOCATED }} adjudicator slot(s).</p>', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (50, 'debate_rules', 'ballots_per_debate_elim', 'per-adj', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (141, 'motions', 'enable_motions', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (171, 'scoring', 'reply_score_min', '34.0', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (172, 'scoring', 'reply_score_max', '41.0', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (173, 'scoring', 'reply_score_step', '0.5', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (174, 'scoring', 'margin_includes_dissenters', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (179, 'draw_rules', 'adj_history_penalty', '10000', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (180, 'draw_rules', 'preformed_panel_mismatch_penalty', '10000000', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (168, 'scoring', 'score_max', '99', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (167, 'scoring', 'score_min', '50', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (169, 'scoring', 'score_step', '1', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (176, 'scoring', 'teamscore_includes_ghosts', 'True', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (200, 'draw_rules', 'draw_skip_adj_checkins', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (201, 'draw_rules', 'no_panellist_position', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (202, 'draw_rules', 'no_trainee_position', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (205, 'draw_rules', 'max_times_on_one_side', '0', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (279, 'public_features', 'tournament_staff', '', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (199, 'draw_rules', 'bp_assignment_method', 'hungarian_preshuffled', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (198, 'draw_rules', 'bp_position_cost_exponent', '4.0', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (226, 'standings', 'standings_missed_debates', '-1', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (250, 'data_entry', 'disable_ballot_confirms', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (251, 'data_entry', 'enable_blind_checks', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (252, 'data_entry', 'assistant_access', 'all_areas', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (253, 'data_entry', 'public_checkins_submit', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (254, 'data_entry', 'checkin_window_people', '12.0', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (170, 'scoring', 'maximum_margin', '0.0', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (216, 'debate_rules', 'ballots_per_debate_elim', 'per-debate', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (246, 'data_entry', 'participant_ballots', 'private-urls', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (104, 'public_features', 'public_results', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (106, 'public_features', 'public_team_standings', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (80, 'data_entry', 'participant_ballots', 'private-urls', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (76, 'tab_release', 'adjudicators_tab_shows', 'final', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (114, 'public_features', 'welcome_message', '', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (115, 'ui_options', 'show_splitting_adjudicators', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (117, 'ui_options', 'participant_code_names', 'off', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (118, 'ui_options', 'show_emoji', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (121, 'ui_options', 'show_speakers_in_draw', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (122, 'ui_options', 'show_seed_in_importer', 'off', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (123, 'email', 'reply_to_name', 'Tabulation Team', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (125, 'email', 'email_hook_key', '', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (126, 'email', 'enable_ballot_receipts', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (127, 'email', 'ballot_email_subject', 'Your ballot for {{ DEBATE }} has been received', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (128, 'email', 'ballot_email_message', '<p>Hi {{ USER }},</p><p>Your ballot for {{ DEBATE }} has been successfully received, with these scores:</p>{{ SCORES }}<p>If there are any problems, please contact the tab team.</p>', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (129, NULL, 'team_points_email_subject', '{{ TEAM }}''s current wins after {{ ROUND }}: {{ POINTS }}', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (130, NULL, 'team_points_email_message', '<p>Hi {{ USER }},</p>After {{ ROUND }}, your team ({{ TEAM }}) currently has <strong>{{ POINTS }}</strong> wins in the {{ TOURN }}.</p><p>Current Standings: {{ URL }}</p>', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (131, NULL, 'adj_email_subject', 'Your assigned debate for {{ ROUND }}: {{ VENUE }}', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (132, NULL, 'adj_email_message', '<p>Hi {{ USER }},</p><p>You have been assigned as <strong>{{ POSITION }}</strong> adjudicator for {{ ROUND }} in <strong>{{ VENUE }}</strong> with the following panel: {{ PANEL }}</p><p>The debate is between these teams: {{ DRAW }}</p>', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (133, NULL, 'team_draw_email_subject', 'Your assigned debate for {{ ROUND }}: {{ VENUE }}', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (134, NULL, 'team_draw_email_message', '<p>Hi {{ USER }},</p><p>You have been assigned as <strong>{{ SIDE }}</strong> for {{ ROUND }} in <strong>{{ VENUE }}</strong> with the following panel: {{ PANEL }}</p><p>The debate is between: {{ DRAW }}</p>', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (135, NULL, 'url_email_subject', 'Your personal private URL for {{ TOURN }}', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (136, NULL, 'url_email_message', '<p>Hi {{ USER }},</p><p>At {{ TOURN }}, we are using an online tabulation system. You can submit your ballots and/or feedback at the following URL. This URL is unique to you — do not share it with anyone, as anyone who knows it can submit forms on your behalf. This URL will not change throughout this tournament, so we suggest bookmarking it.</p><p>Your personal private URL is:<br />{{ URL }}</p>', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (138, NULL, 'motion_email_message', '<p>The motion(s) for {{ ROUND }} are:</p>{{ MOTIONS }}', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (139, NULL, 'team_email_subject', 'Registration for {{ SHORT }}', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (140, NULL, 'team_email_message', 'Hi {{ USER }},

You are registered as {{ LONG }} in {{ TOURN }} with {{ SPEAKERS }}.', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (143, 'motions', 'show_motions_in_results', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (144, 'motions', 'public_motions_order', 'reverse', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (145, 'motions', 'enable_motion_reuse', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (147, 'registration', 'team_name_generator', 'user', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (81, 'data_entry', 'participant_feedback', 'private-urls', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (30, 'draw_rules', 'bp_position_cost', 'entropy', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (32, 'draw_rules', 'bp_position_cost_exponent', '4.0', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (33, 'draw_rules', 'bp_assignment_method', 'hungarian_preshuffled', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (52, 'debate_rules', 'speakers_in_ballots', 'always', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (58, 'debate_rules', 'preparation_time', '-1', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (82, 'data_entry', 'public_use_password', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (83, 'data_entry', 'public_password', '', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (84, 'data_entry', 'disable_ballot_confirms', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (85, 'data_entry', 'enable_blind_checks', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (86, 'data_entry', 'assistant_access', 'all_areas', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (88, 'data_entry', 'checkin_window_people', '12.0', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (89, 'data_entry', 'checkin_window_venues', '2.0', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (90, 'data_entry', 'ballots_confirm_digits', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (91, 'data_entry', 'score_return_location', 'TBA', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (92, 'data_entry', 'feedback_return_location', 'TBA', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (93, 'data_entry', 'enable_postponements', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (94, 'data_entry', 'individual_ballots', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (95, 'data_entry', 'ballots_hide_motions', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (96, 'public_features', 'search_engine_indexing', 'all', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (97, 'public_features', 'public_participants', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (98, 'public_features', 'public_institutions_list', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (99, 'public_features', 'public_diversity', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (100, 'public_features', 'public_checkins', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (102, 'public_features', 'public_side_allocations', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (49, 'debate_rules', 'ballots_per_debate_prelim', 'per-adj', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (55, 'debate_rules', 'reply_scores_enabled', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (54, 'debate_rules', 'side_names', 'gov-opp', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (53, 'debate_rules', 'substantive_speakers', '3', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (48, 'debate_rules', 'teams_in_debate', '2', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (17, 'draw_rules', 'avoid_same_institution', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (18, 'draw_rules', 'avoid_team_history', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (26, 'draw_rules', 'draw_avoid_conflicts', 'one_up_one_down', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (25, 'draw_rules', 'draw_pairing_method', 'slide', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (27, 'draw_rules', 'draw_pullup_restriction', 'least_to_date', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (24, 'draw_rules', 'draw_side_allocations', 'balance', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (41, 'feedback', 'adj_max_score', '10.0', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (2, 'scoring', 'score_max', '83', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (64, 'standings', 'speaker_standings_precedence', 'average', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (60, 'standings', 'standings_missed_debates', '2', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (101, 'public_features', 'public_break_categories', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (103, 'public_features', 'public_draw', 'current', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (105, 'public_features', 'public_motions', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (4, 'scoring', 'maximum_margin', '0.0', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (3, 'scoring', 'score_step', '1', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (78, 'tab_release', 'all_results_released', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (79, 'tab_release', 'private_ballots_released', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (1, 'scoring', 'score_min', '65', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (158, 'registration', 'code_name_generator', 'emoji', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (65, 'standings', 'speaker_standings_extra_metrics', 'stdev//count', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (256, 'data_entry', 'ballots_confirm_digits', 'True', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (257, 'data_entry', 'score_return_location', 'TBA', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (11, 'draw_rules', 'adj_min_voting_score', '1.5', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (12, 'draw_rules', 'adj_conflict_penalty', '1000000', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (13, 'draw_rules', 'adj_history_penalty', '10000', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (14, 'draw_rules', 'preformed_panel_mismatch_penalty', '10000000', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (15, 'draw_rules', 'team_institution_penalty', '1', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (16, 'draw_rules', 'team_history_penalty', '1000', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (19, 'draw_rules', 'pullup_debates_penalty', '0', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (20, 'draw_rules', 'side_penalty', '0', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (21, 'draw_rules', 'pairing_penalty', '0', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (22, 'draw_rules', 'max_times_per_side', '5', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (28, 'draw_rules', 'draw_pullup_penalty', '0', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (34, 'draw_rules', 'draw_skip_adj_checkins', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (35, 'draw_rules', 'no_panellist_position', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (36, 'draw_rules', 'no_trainee_position', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (37, 'draw_rules', 'bye_team_results', 'none', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (38, 'draw_rules', 'bye_team_selection', 'off', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (39, 'draw_rules', 'max_times_on_one_side', '0', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (51, 'debate_rules', 'winners_in_ballots', 'none', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (56, 'debate_rules', 'require_substantive_for_reply', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (57, 'debate_rules', 'speaker_ranks', 'none', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (59, 'debate_rules', 'enable_forfeits', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (61, 'standings', 'standings_missed_replies', '-1', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (63, 'standings', 'team_standings_extra_metrics', NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (42, 'feedback', 'adj_score_step', '0.5', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (45, 'feedback', 'show_unexpected_feedback', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (8, 'scoring', 'margin_includes_dissenters', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (6, 'scoring', 'reply_score_max', '42.0', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (5, 'scoring', 'reply_score_min', '34.5', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (7, 'scoring', 'reply_score_step', '0.5', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (43, 'feedback', 'feedback_paths', 'no-adjs', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (44, 'feedback', 'feedback_from_teams', 'all-adjs', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (46, 'feedback', 'show_unaccredited', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (67, 'tab_release', 'team_tab_limit', '0', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (68, 'tab_release', 'speaker_tab_released', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (69, 'tab_release', 'speaker_tab_limit', '0', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (70, 'tab_release', 'replies_tab_released', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (71, 'tab_release', 'replies_tab_limit', '0', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (72, 'tab_release', 'break_category_tabs_released', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (73, 'tab_release', 'speaker_category_tabs_released', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (108, 'public_features', 'public_breaking_teams', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (109, 'public_features', 'public_break_metrics_to_show', '-1', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (110, 'public_features', 'public_breaking_adjs', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (112, 'public_features', 'public_schedule', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (124, 'email', 'reply_to_address', '', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (146, 'registration', 'speakers_in_team', '3', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (111, 'public_features', 'feedback_progress', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (297, NULL, 'adj_email_subject', 'Your assigned debate for {{ ROUND }}: {{ VENUE }}', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (9, 'scoring', 'ballot_introduction', '<p>81-83 very very good speech</p>', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (40, 'feedback', 'adj_min_score', '1.0', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (74, 'tab_release', 'motion_tab_released', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (75, 'tab_release', 'adjudicators_tab_released', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (116, 'ui_options', 'team_code_names', 'off', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (137, NULL, 'motion_email_subject', 'Motions for {{ ROUND }}', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (160, 'registration', 'institution_register_message', '', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (161, 'registration', 'adjudicator_register_message', '', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (162, 'registration', 'team_register_message', '', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (163, 'registration', 'institution_registration_email_subject', 'Institution registered for {{ TOURN }}', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (164, 'registration', 'institution_registration_email_body', '<p>Hi {{ USER }},</p><p>Your institution has been registered. You can manage your registration here: {{ URL }}</p>', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (165, 'registration', 'slots_allocated_email_subject', 'Participant slots allocated for {{ INSTITUTION }}', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (120, 'ui_options', 'show_adjudicator_institutions', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (119, 'ui_options', 'show_team_institutions', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (177, 'draw_rules', 'adj_min_voting_score', '1.5', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (178, 'draw_rules', 'adj_conflict_penalty', '1000000', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (181, 'draw_rules', 'team_institution_penalty', '1', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (188, 'draw_rules', 'max_times_per_side', '5', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (189, 'draw_rules', 'draw_odd_bracket', 'intermediate_bubble_up_down', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (190, 'draw_rules', 'draw_side_allocations', 'balance', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (192, 'draw_rules', 'draw_avoid_conflicts', 'one_up_one_down', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (194, 'draw_rules', 'draw_pullup_penalty', '0', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (203, 'draw_rules', 'bye_team_results', 'none', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (204, 'draw_rules', 'bye_team_selection', 'off', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (273, 'public_features', 'public_record', 'True', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (274, 'public_features', 'public_breaking_teams', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (183, 'draw_rules', 'avoid_same_institution', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (184, 'draw_rules', 'avoid_team_history', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (196, 'draw_rules', 'bp_position_cost', 'entropy', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (195, 'draw_rules', 'bp_pullup_distribution', 'anywhere', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (197, 'draw_rules', 'bp_renyi_order', '1.0', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (249, 'data_entry', 'public_password', '', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (258, 'data_entry', 'feedback_return_location', 'TBA', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (259, 'data_entry', 'enable_postponements', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (260, 'data_entry', 'individual_ballots', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (261, 'data_entry', 'ballots_hide_motions', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (295, NULL, 'team_points_email_subject', '{{ TEAM }}''s current wins after {{ ROUND }}: {{ POINTS }}', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (298, NULL, 'adj_email_message', '<p>Hi {{ USER }},</p><p>You have been assigned as <strong>{{ POSITION }}</strong> adjudicator for {{ ROUND }} in <strong>{{ VENUE }}</strong> with the following panel: {{ PANEL }}</p><p>The debate is between these teams: {{ DRAW }}</p>', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (332, 'registration', 'slots_allocated_email_body', '<p>Hi {{ USER }},</p><p>Your institution {{ INSTITUTION }} has been allocated {{ TEAMS_ALLOCATED }} team slot(s) and {{ ADJUDICATORS_ALLOCATED }} adjudicator slot(s).</p>', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (215, 'debate_rules', 'ballots_per_debate_prelim', 'per-debate', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (307, 'motions', 'enable_motions', 'True', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (142, 'motions', 'motion_vetoes_enabled', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (175, 'scoring', 'ballot_introduction', '', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (227, 'standings', 'standings_missed_replies', '-1', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (229, 'standings', 'team_standings_extra_metrics', NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (262, 'public_features', 'search_engine_indexing', 'all', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (263, 'public_features', 'public_participants', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (264, 'public_features', 'public_institutions_list', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (265, 'public_features', 'public_diversity', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (266, 'public_features', 'public_checkins', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (268, 'public_features', 'public_side_allocations', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (275, 'public_features', 'public_break_metrics_to_show', '-1', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (276, 'public_features', 'public_breaking_adjs', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (277, 'public_features', 'feedback_progress', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (278, 'public_features', 'public_schedule', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (280, 'public_features', 'welcome_message', '', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (281, 'ui_options', 'show_splitting_adjudicators', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (282, 'ui_options', 'team_code_names', 'off', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (283, 'ui_options', 'participant_code_names', 'off', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (284, 'ui_options', 'show_emoji', 'True', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (217, 'debate_rules', 'winners_in_ballots', 'none', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (225, 'debate_rules', 'enable_forfeits', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (222, 'debate_rules', 'require_substantive_for_reply', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (221, 'debate_rules', 'reply_scores_enabled', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (219, 'debate_rules', 'substantive_speakers', '2', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (220, 'debate_rules', 'side_names', 'gov-opp', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (218, 'debate_rules', 'speakers_in_ballots', 'prelim', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (228, 'standings', 'team_standings_precedence', 'points//speaks_sum//firsts//seconds//draw_strength', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (286, 'ui_options', 'show_adjudicator_institutions', 'True', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (285, 'ui_options', 'show_team_institutions', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (232, 'tab_release', 'team_tab_released', 'True', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (223, 'debate_rules', 'speaker_ranks', 'none', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (224, 'debate_rules', 'preparation_time', '15', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (209, 'feedback', 'feedback_paths', 'with-p-on-c', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (255, 'data_entry', 'checkin_window_venues', '2.0', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (287, 'ui_options', 'show_speakers_in_draw', 'True', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (291, 'email', 'email_hook_key', '', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (292, 'email', 'enable_ballot_receipts', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (293, 'email', 'ballot_email_subject', 'Your ballot for {{ DEBATE }} has been received', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (294, 'email', 'ballot_email_message', '<p>Hi {{ USER }},</p><p>Your ballot for {{ DEBATE }} has been successfully received, with these scores:</p>{{ SCORES }}<p>If there are any problems, please contact the tab team.</p>', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (296, NULL, 'team_points_email_message', '<p>Hi {{ USER }},</p>After {{ ROUND }}, your team ({{ TEAM }}) currently has <strong>{{ POINTS }}</strong> wins in the {{ TOURN }}.</p><p>Current Standings: {{ URL }}</p>', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (308, 'motions', 'motion_vetoes_enabled', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (231, 'standings', 'speaker_standings_extra_metrics', 'average//stdev', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (87, 'data_entry', 'public_checkins_submit', 'False', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (66, 'tab_release', 'team_tab_released', 'True', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (113, 'public_features', 'tournament_staff', '<strong>Tabulation:</strong> [list tabulation staff here]<br><strong>Equity:</strong> [list equity members here]<br><strong>Organisation:</strong> [list organising committee members here]<br><strong>Adjudication:</strong> [list chief adjudicators here]', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (182, 'draw_rules', 'team_history_penalty', '1000', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (185, 'draw_rules', 'pullup_debates_penalty', '0', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (186, 'draw_rules', 'side_penalty', '0', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (187, 'draw_rules', 'pairing_penalty', '0', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (191, 'draw_rules', 'draw_pairing_method', 'slide', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (193, 'draw_rules', 'draw_pullup_restriction', 'none', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (208, 'feedback', 'adj_score_step', '0.5', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (230, 'standings', 'speaker_standings_precedence', 'total', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (267, 'public_features', 'public_break_categories', 'True', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (269, 'public_features', 'public_draw', 'current', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (271, 'public_features', 'public_motions', 'True', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (270, 'public_features', 'public_results', 'True', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (272, 'public_features', 'public_team_standings', 'True', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (248, 'data_entry', 'public_use_password', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (233, 'tab_release', 'team_tab_limit', '0', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (234, 'tab_release', 'speaker_tab_released', 'True', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (235, 'tab_release', 'speaker_tab_limit', '0', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (236, 'tab_release', 'replies_tab_released', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (237, 'tab_release', 'replies_tab_limit', '0', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (238, 'tab_release', 'break_category_tabs_released', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (239, 'tab_release', 'speaker_category_tabs_released', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (245, 'tab_release', 'private_ballots_released', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (214, 'debate_rules', 'teams_in_debate', '4', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (206, 'feedback', 'adj_min_score', '0.0', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (207, 'feedback', 'adj_max_score', '10.0', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (210, 'feedback', 'feedback_from_teams', 'orallist', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (211, 'feedback', 'show_unexpected_feedback', 'True', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (212, 'feedback', 'show_unaccredited', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (247, 'data_entry', 'participant_feedback', 'private-urls', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (288, 'ui_options', 'show_seed_in_importer', 'off', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (289, 'email', 'reply_to_name', 'Tabulation Team', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (290, 'email', 'reply_to_address', '', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (299, NULL, 'team_draw_email_subject', 'Your assigned debate for {{ ROUND }}: {{ VENUE }}', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (300, NULL, 'team_draw_email_message', '<p>Hi {{ USER }},</p><p>You have been assigned as <strong>{{ SIDE }}</strong> for {{ ROUND }} in <strong>{{ VENUE }}</strong> with the following panel: {{ PANEL }}</p><p>The debate is between: {{ DRAW }}</p>', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (301, NULL, 'url_email_subject', 'Your personal private URL for {{ TOURN }}', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (302, NULL, 'url_email_message', '<p>Hi {{ USER }},</p><p>At {{ TOURN }}, we are using an online tabulation system. You can submit your ballots and/or feedback at the following URL. This URL is unique to you — do not share it with anyone, as anyone who knows it can submit forms on your behalf. This URL will not change throughout this tournament, so we suggest bookmarking it.</p><p>Your personal private URL is:<br />{{ URL }}</p>', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (303, NULL, 'motion_email_subject', 'Motions for {{ ROUND }}', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (240, 'tab_release', 'motion_tab_released', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (241, 'tab_release', 'adjudicators_tab_released', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (242, 'tab_release', 'adjudicators_tab_shows', 'final', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (243, 'tab_release', 'ballots_released', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (244, 'tab_release', 'all_results_released', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (304, NULL, 'motion_email_message', '<p>The motion(s) for {{ ROUND }} are:</p>{{ MOTIONS }}', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (305, NULL, 'team_email_subject', 'Registration for {{ SHORT }}', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (306, NULL, 'team_email_message', 'Hi {{ USER }},

You are registered as {{ LONG }} in {{ TOURN }} with {{ SPEAKERS }}.', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (312, 'registration', 'speakers_in_team', '3', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (313, 'registration', 'team_name_generator', 'user', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (314, 'registration', 'reg_team_fields', 'emoji,use_institution_prefix', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (315, 'registration', 'reg_institution_fields', NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (316, 'registration', 'reg_speaker_fields', 'email', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (317, 'registration', 'reg_adjudicator_fields', 'email', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (318, 'registration', 'institution_registration', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (319, 'registration', 'institution_participant_registration', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (320, 'registration', 'reg_institution_slots', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (321, 'registration', 'reg_institution_slot_transfers', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (322, 'registration', 'open_team_registration', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (323, 'registration', 'open_adj_registration', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (324, 'registration', 'code_name_generator', 'emoji', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (325, 'registration', 'registration_confirmation', 'never', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (326, 'registration', 'institution_register_message', '', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (327, 'registration', 'adjudicator_register_message', '', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (328, 'registration', 'team_register_message', '', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (329, 'registration', 'institution_registration_email_subject', 'Institution registered for {{ TOURN }}', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (330, 'registration', 'institution_registration_email_body', '<p>Hi {{ USER }},</p><p>Your institution has been registered. You can manage your registration here: {{ URL }}</p>', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (331, 'registration', 'slots_allocated_email_subject', 'Participant slots allocated for {{ INSTITUTION }}', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (309, 'motions', 'show_motions_in_results', 'True', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (310, 'motions', 'public_motions_order', 'reverse', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (311, 'motions', 'enable_motion_reuse', 'False', 2) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (47, 'feedback', 'feedback_introduction', '<p><br></p><table border="1" cellspacing="0" cellpadding="10">

  <thead>

    <tr>

      <th>Adjudicator Score</th>

      <th>Description</th>

    </tr>

  </thead>



  <tbody>

    <tr>

      <td><strong>10 — Exceptional</strong></td>

      <td>

        <p>

          <strong>Accuracy:</strong> Extremely accurate call, reflected through precise appreciation and very meticulous assessment of ''close'' comparisons between teams reflected through speaker scores; comprehensive recognition of all necessary inter-team comparisons.

        </p>

        <p>

          <strong>Reasoning/Justification:</strong> Extremely well-justified justification, evidenced by flawlessly or near-flawlessly outlined explanations that are in-depth, insightful, and nuanced; explicit identification and strong justification for any weighing metrics or assumptions employed in judging; certainly should chair.

        </p>

      </td>

    </tr>



    <tr>

      <td><strong>9 — Excellent</strong></td>

      <td>

        <p>

          <strong>Accuracy:</strong> Very accurate call, reflected through appreciation and correct assessment of ''close'' comparisons between teams reflected through speaker scores; comprehensive recognition of most necessary inter-team comparisons.

        </p>

        <p>

          <strong>Reasoning/Justification:</strong> Very well-justified justification, evidenced by well-outlined explanations that are in-depth, insightful, and nuanced; good attempts made to justify weighing metrics in judging; should chair.

        </p>

      </td>

    </tr>



    <tr>

      <td><strong>8 — Very Good</strong></td>

      <td>

        <p>

          <strong>Accuracy:</strong> Accurate call, reflected through largely correct judgment regarding ''close'' comparisons between teams; detailed recognition of most necessary inter-team comparisons.

        </p>

        <p>

          <strong>Reasoning/Justification:</strong> Comprehensively justified justification, evidenced by well-outlined explanations that are in-depth and nuanced; very occasional slippage into minor assumptions or personal biases in judging, or minor lack of clarity in one or more inter-team comparisons; metrics for judging are identified but not explicitly justified; high potential to chair.

        </p>

      </td>

    </tr>



    <tr>

      <td><strong>7 — Good</strong></td>

      <td>

        <p>

          <strong>Accuracy:</strong> Accurate call, reflected through generally correct rankings but potentially wrong regarding ''close'' comparisons between teams; careful acknowledgment of most necessary inter-team comparisons in consideration.

        </p>

        <p>

          <strong>Reasoning/Justification:</strong> Generally well-justified justification, evidenced by well-outlined explanations; occasional slippage into minor personal biases and assumptions, or minor lack of clarity in some inter-team comparisons; has potential to chair.

        </p>

      </td>

    </tr>



    <tr>

      <td><strong>6 — Above Average</strong></td>

      <td>

        <p>

          <strong>Accuracy:</strong> Mostly accurate call, although may fail to get ''close'' comparisons between teams correct.

        </p>

        <p>

          <strong>Reasoning/Justification:</strong> Good attempt at justifying decision; explanations demonstrating some appreciation of key clashes and how they are resolved; occasional slippage into minor or insignificant personal biases and assumptions; lack of clarity in some inter-team comparisons.

        </p>

      </td>

    </tr>

  </tbody>

</table>', 1) ON CONFLICT DO NOTHING;
INSERT INTO "options_tournamentpreferencemodel" ("id", "section", "name", "raw_value", "instance_id") VALUES (213, 'feedback', 'feedback_introduction', '<p><br></p><table border="1" cellspacing="0" cellpadding="10">



  <thead>



    <tr>



      <th>Adjudicator Score</th>



      <th>Description</th>



    </tr>



  </thead>







  <tbody>



    <tr>



      <td><strong>10 — Exceptional</strong></td>



      <td>



        <p>



          <strong>Accuracy:</strong> Extremely accurate call, reflected through precise appreciation and very meticulous assessment of ''close'' comparisons between teams reflected through speaker scores; comprehensive recognition of all necessary inter-team comparisons.



        </p>



        <p>



          <strong>Reasoning/Justification:</strong> Extremely well-justified justification, evidenced by flawlessly or near-flawlessly outlined explanations that are in-depth, insightful, and nuanced; explicit identification and strong justification for any weighing metrics or assumptions employed in judging; certainly should chair.



        </p>



      </td>



    </tr>







    <tr>



      <td><strong>9 — Excellent</strong></td>



      <td>



        <p>



          <strong>Accuracy:</strong> Very accurate call, reflected through appreciation and correct assessment of ''close'' comparisons between teams reflected through speaker scores; comprehensive recognition of most necessary inter-team comparisons.



        </p>



        <p>



          <strong>Reasoning/Justification:</strong> Very well-justified justification, evidenced by well-outlined explanations that are in-depth, insightful, and nuanced; good attempts made to justify weighing metrics in judging; should chair.



        </p>



      </td>



    </tr>







    <tr>



      <td><strong>8 — Very Good</strong></td>



      <td>



        <p>



          <strong>Accuracy:</strong> Accurate call, reflected through largely correct judgment regarding ''close'' comparisons between teams; detailed recognition of most necessary inter-team comparisons.



        </p>



        <p>



          <strong>Reasoning/Justification:</strong> Comprehensively justified justification, evidenced by well-outlined explanations that are in-depth and nuanced; very occasional slippage into minor assumptions or personal biases in judging, or minor lack of clarity in one or more inter-team comparisons; metrics for judging are identified but not explicitly justified; high potential to chair.



        </p>



      </td>



    </tr>







    <tr>



      <td><strong>7 — Good</strong></td>



      <td>



        <p>



          <strong>Accuracy:</strong> Accurate call, reflected through generally correct rankings but potentially wrong regarding ''close'' comparisons between teams; careful acknowledgment of most necessary inter-team comparisons in consideration.



        </p>



        <p>



          <strong>Reasoning/Justification:</strong> Generally well-justified justification, evidenced by well-outlined explanations; occasional slippage into minor personal biases and assumptions, or minor lack of clarity in some inter-team comparisons; has potential to chair.



        </p>



      </td>



    </tr>







    <tr>



      <td><strong>6 — Above Average</strong></td>



      <td>



        <p>



          <strong>Accuracy:</strong> Mostly accurate call, although may fail to get ''close'' comparisons between teams correct.



        </p>



        <p>



          <strong>Reasoning/Justification:</strong> Good attempt at justifying decision; explanations demonstrating some appreciation of key clashes and how they are resolved; occasional slippage into minor or insignificant personal biases and assumptions; lack of clarity in some inter-team comparisons.



        </p>



      </td>



    </tr>



  </tbody>



</table>', 2) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "participants_adjudicator" (
    "person_ptr_id" integer NOT NULL,
    "base_score" double precision NOT NULL,
    "trainee" boolean NOT NULL,
    "breaking" boolean NOT NULL,
    "independent" boolean NOT NULL,
    "adj_core" boolean NOT NULL,
    "institution_id" integer,
    "tournament_id" integer,
    "registration_status" VARCHAR(1) NOT NULL,
    PRIMARY KEY ("person_ptr_id")
);
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (53, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (56, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (57, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (58, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (55, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (54, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (87, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (59, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (104, 5.0, false, false, false, false, 1, 1, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (5, 5.0, false, false, false, false, 1, 1, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (105, 5.0, false, false, false, false, 1, 1, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (106, 0.0, false, false, false, false, 1, 1, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (60, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (61, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (7, 5.5, false, false, false, false, 1, 1, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (8, 5.5, false, false, false, false, 1, 1, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (9, 5.5, false, false, false, false, 1, 1, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (20, 5.0, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (21, 5.0, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (22, 5.0, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (19, 5.0, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (62, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (63, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (64, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (65, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (66, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (67, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (68, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (69, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (70, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (71, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (18, 5.0, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (35, 5.5, false, false, false, false, 1, 1, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (72, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (73, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (74, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (75, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (76, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (77, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (78, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (79, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (80, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (81, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (82, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (83, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (84, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (85, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (86, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (50, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (51, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_adjudicator" ("person_ptr_id", "base_score", "trainee", "breaking", "independent", "adj_core", "institution_id", "tournament_id", "registration_status") VALUES (52, 2.5, false, false, false, false, 1, 2, 'C') ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "participants_coach" (
    "person_ptr_id" integer NOT NULL,
    "tournament_institution_id" integer NOT NULL,
    PRIMARY KEY ("person_ptr_id")
);

CREATE TABLE IF NOT EXISTS "participants_institution" (
    "id" integer NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "code" VARCHAR(20) NOT NULL,
    "region_id" integer,
    PRIMARY KEY ("id")
);
INSERT INTO "participants_institution" ("id", "name", "code", "region_id") VALUES (1, 'Indian Institute of Technology Roorkee', 'IITR', NULL) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "participants_person" (
    "id" integer NOT NULL,
    "name" VARCHAR(70) NOT NULL,
    "email" VARCHAR(254),
    "phone" VARCHAR(40) NOT NULL,
    "anonymous" boolean NOT NULL,
    "gender" VARCHAR(1) NOT NULL,
    "pronoun" VARCHAR(10) NOT NULL,
    "url_key" VARCHAR(24),
    "code_name" VARCHAR(25) NOT NULL,
    "last_name" VARCHAR(70),
    PRIMARY KEY ("id")
);
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (105, 'Dhruvi', NULL, '', false, '', '', '7l44y5yz', '03096033', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (10, 'Karunesh', NULL, '', false, '', '', 'b91g7b0p', '98181878', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (110, 'Vaishnavi_BPD2', NULL, '', false, '', '', 'ejnwfk', '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (11, 'Arya', NULL, '', false, '', '', '9uf8crg6', '07845702', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (109, 'Ishaan_BPD2', NULL, '', false, '', '', 'bansal', '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (12, 'Goyal', NULL, '', false, '', '', '3agxorv9', '62108280', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (60, 'Aarya', NULL, '', false, '', '', '1rk942rh', '25811591', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (13, 'Aarya', NULL, '', false, '', '', 'del7ynpc', '90816673', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (61, 'Neelansh', NULL, '', false, '', '', 'u0unsfa8', '73951306', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (115, 'Divya_D7', NULL, '', false, '', '', '5678', '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (92, 'Speaker 1', NULL, '', false, '', '', 'gkde3qt5', '39448668', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (20, 'Armaan', NULL, '', false, '', '', 'o3gxd1i3', '11437610', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (21, 'Vaishnavi', NULL, '', false, '', '', '9usi667m', '94196325', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (93, 'Speaker 2', NULL, '', false, '', '', '1e1cw734', '92928682', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (94, 'Speaker 3', NULL, '', false, '', '', 'brrpl9zi', '79751033', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (53, 'Armaan', NULL, '', false, '', '', 'whdlprgr', '20717599', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (56, 'Divija', NULL, '', false, '', '', 's6mprtpd', '92272272', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (57, 'Anshul', NULL, '', false, '', '', 'phhywf5q', '37681417', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (58, 'Arya', NULL, '', false, '', '', 'ji20q0mj', '81741818', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (14, 'Bhavya_D2', NULL, '', false, '', '', 'kiye6slu', '03652114', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (15, 'Saanvi_D2', NULL, '', false, '', '', 'ck2xghg2', '39539660', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (16, 'Dhruvi_D2', NULL, '', false, '', '', '0vrz2ywx', '11210633', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (17, 'Ishaan_D2', NULL, '', false, '', '', 'f4xkg15m', '32437083', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (59, 'Anuja', NULL, '', false, '', '', 'f1nhvkn3', '78324059', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (89, 'Vaishnavi_D5', NULL, '', false, '', '', 'kdnfks', '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (103, '-', NULL, '', false, '', '', NULL, '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (1, 'Aarya', NULL, '', false, '', '', 'uyd561b5', '55733934', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (47, 'Speaker 2', NULL, '', false, '', '', '3i1vou4q', '43838014', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (48, 'Speaker 1', NULL, '', false, '', '', '7132ib86', '75275027', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (49, 'Speaker 2', NULL, '', false, '', '', 'ivd9x5m9', '56606238', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (106, 'Karunesh', NULL, '', false, '', '', 'fufa', '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (112, 'Saanvi_BPD2', NULL, '', false, '', '', 'msnjd', '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (111, 'Bhavya_BPD2', NULL, '', false, '', '', '67', '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (116, 'Anusha_D7', NULL, '', false, '', '', '1123', '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (63, 'Adjudicator 14', NULL, '', false, '', '', 'jxn32fxi', '01109475', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (64, 'Adjudicator 15', NULL, '', false, '', '', 'os0mmug5', '21314853', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (65, 'Adjudicator 16', NULL, '', false, '', '', 'v8cmsag1', '60391575', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (66, 'Adjudicator 17', NULL, '', false, '', '', 'fd3qiiil', '72071203', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (67, 'Adjudicator 18', NULL, '', false, '', '', 'efgrh7jm', '53268742', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (68, 'Adjudicator 19', NULL, '', false, '', '', 'i8et5f1x', '51277451', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (69, 'Adjudicator 20', NULL, '', false, '', '', 'zc5fhyda', '22026156', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (70, 'Adjudicator 21', NULL, '', false, '', '', 'uf57z8jp', '89587738', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (71, 'Adjudicator 22', NULL, '', false, '', '', 'cx39gn4f', '97534903', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (72, 'Adjudicator 23', NULL, '', false, '', '', 'fj6h833v', '52078961', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (73, 'Adjudicator 24', NULL, '', false, '', '', '6c317ztb', '82219156', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (74, 'Adjudicator 25', NULL, '', false, '', '', '8cgv4rtt', '87206926', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (83, 'Adjudicator 34', NULL, '', false, '', '', '6w9j63x2', '46592445', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (84, 'Adjudicator 35', NULL, '', false, '', '', 'a4hzbdjt', '49589541', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (85, 'Adjudicator 36', NULL, '', false, '', '', 'piadsjxl', '68221217', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (86, 'Adjudicator 37', NULL, '', false, '', '', 'nupr00wf', '18601340', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (101, 'Ojus_d4', NULL, '', false, '', '', '11221', '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (28, 'Anshul_D5', NULL, '', false, '', '', '4ioi9xyd', '26111450', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (29, 'Ojus', NULL, '', false, '', '', 'xix3u6g0', '16962258', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (22, 'Anuja', NULL, '', false, '', '', 'v706g5j4', '33796083', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (7, 'Armaan', NULL, '', false, '', '', 'vgtkkbbt', '45331442', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (19, 'Ruchir', NULL, '', false, '', '', 'idgtcfts', '06026657', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (8, 'Goyal', NULL, '', false, '', '', '5ikbrnfp', '01992769', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (18, 'Saanvi', 'saanvi_c@cs.iitr.ac.in', '', false, '', '', 'a9sqy2k0', '97936578', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (9, 'Rohan', NULL, '', false, '', '', 'ne4junmk', '78829937', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (50, 'Ruchir', NULL, '', false, '', '', 'soxskagy', '75638261', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (51, 'Arjita', NULL, '', false, '', '', '34ax32p6', '38131623', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (52, 'Poorvi', NULL, '', false, '', '', '91nwar6d', '50144423', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (97, 'Karunesh_D2', NULL, '', false, '', '', NULL, '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (30, 'Anshul', NULL, '', false, '', '', 'wdwy8hq5', '10807818', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (31, 'Aarya', NULL, '', false, '', '', 'jacc4m3f', '70815344', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (32, 'Bhavya', NULL, '', false, '', '', 'gvs4h3za', '57921341', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (33, 'Dhruvi', NULL, '', false, '', '', 'gtmtspwq', '92939313', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (34, '--', NULL, '', false, '', '', '9ardjdxg', '31915893', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (35, 'Tanvi', NULL, '', false, '', '', 'cwvqmx31', '77264576', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (55, 'Rohan', NULL, '', false, '', '', 'zmngw420', '95496979', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (54, 'Goyal', NULL, '', false, '', '', 'kbuvrbwo', '97120731', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (100, 'Rohan_d4', NULL, '', false, '', '', '112211', '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (5, 'Paddy', NULL, '', false, '', '', '9xm5m3mf', '73166712', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (2, 'Ruchir', NULL, '', false, '', '', 'hgyo1fz5', '04337331', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (3, 'Goyal', NULL, '', false, '', '', '2yw9wu34', '48596603', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (4, 'Divya', NULL, '', false, '', '', 'odd8z2dn', '40703045', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (6, 'Vaishnavi', NULL, '', false, '', '', 'sac7npji', '17935610', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (40, 'Speaker 1', NULL, '', false, '', '', 'pcwd1b3e', '41978514', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (41, 'Speaker 2', NULL, '', false, '', '', '37eepgx7', '81445413', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (42, 'Speaker 1', NULL, '', false, '', '', 'ffs4ga7a', '21359409', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (43, 'Speaker 2', NULL, '', false, '', '', '3wx1r6eu', '47613629', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (44, 'Speaker 1', NULL, '', false, '', '', 'd7pesl8q', '07131977', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (45, 'Speaker 2', NULL, '', false, '', '', '74d71zby', '25968279', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (46, 'Speaker 1', NULL, '', false, '', '', 'etneyq3x', '47445526', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (36, 'Karunesh_D7', NULL, '', false, '', '', '7wi0ikof', '11566735', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (37, 'Goyal_D7', NULL, '', false, '', '', 'glhq8swv', '83303999', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (62, 'Adjudicator 13', NULL, '', false, '', '', 'o1dpnz2n', '42052518', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (75, 'Adjudicator 26', NULL, '', false, '', '', 'xc82k2sj', '94583323', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (76, 'Adjudicator 27', NULL, '', false, '', '', 'mjpmqnp9', '44493547', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (77, 'Adjudicator 28', NULL, '', false, '', '', 'jtak96bg', '73138097', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (78, 'Adjudicator 29', NULL, '', false, '', '', 'sd3hvy51', '50794879', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (90, 'Speaker 3', NULL, '', false, '', '', NULL, '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (79, 'Adjudicator 30', NULL, '', false, '', '', 'ks4f6x27', '46920396', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (80, 'Adjudicator 31', NULL, '', false, '', '', 'mx4k9478', '26512156', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (81, 'Adjudicator 32', NULL, '', false, '', '', '0w7izel2', '99516719', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (82, 'Adjudicator 33', NULL, '', false, '', '', 'lreh4k9f', '33489089', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (98, 'Ishaan_d3', NULL, '', false, '', '', 'njsck', '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (23, 'Dhruvi_d4', NULL, '', false, '', '', 'bd9lmy6p', '12146790', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (24, 'Goyal_d4', NULL, '', false, '', '', 'bh8vi3nx', '71488490', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (25, 'Armaan_d4', NULL, '', false, '', '', 'dzj62pqr', '09558161', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (26, 'Dhruvi_D5', NULL, '', false, '', '', '7kbo4p1r', '92605771', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (27, 'Arya_D5', NULL, '', false, '', '', '8bfg1kqp', '68731864', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (95, '-', NULL, '', false, '', '', NULL, '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (104, 'Arya', NULL, '', false, '', '', 'ftrk0lnd', '68163532', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (38, 'Speaker 1', NULL, '', false, '', '', '0tpliaye', '24600886', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (39, 'Speaker 2', NULL, '', false, '', '', '0fdbg2a8', '28387948', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (114, 'Anusha_BPD2', NULL, '', false, '', '', 'kjdncs', '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (91, 'Rohan', NULL, '', false, '', '', 'abcdefg', '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (88, 'Anusha', NULL, '', false, '', '', 'pqrstuv', '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (96, 'Anusha_D2', NULL, '', false, '', '', NULL, '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (113, 'Arhaan_BPD2', NULL, '', false, '', '', 'nsckm', '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (99, 'Anusha_d3', NULL, '', false, '', '', 'sijdij', '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (87, 'Bhavya', NULL, '', false, '', '', '7wl7kgtx', '32404239', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (108, 'Anuja_BP2', NULL, '', false, '', '', 'jcnsd', '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (102, 'Aarya_D5', NULL, '', false, '', '', 'kfsek', '', NULL) ON CONFLICT DO NOTHING;
INSERT INTO "participants_person" ("id", "name", "email", "phone", "anonymous", "gender", "pronoun", "url_key", "code_name", "last_name") VALUES (107, 'Ruchir_BP2', NULL, '', false, '', '', 'upcomingfufa', '', NULL) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "participants_region" (
    "id" integer NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "participants_speaker" (
    "person_ptr_id" integer NOT NULL,
    "team_id" integer NOT NULL,
    PRIMARY KEY ("person_ptr_id")
);
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (29, 9) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (30, 9) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (31, 9) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (32, 10) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (33, 10) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (34, 10) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (38, 19) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (39, 19) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (40, 20) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (41, 20) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (42, 21) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (43, 21) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (44, 22) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (45, 22) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (46, 23) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (47, 23) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (48, 24) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (49, 24) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (10, 5) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (11, 5) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (12, 6) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (13, 6) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (91, 6) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (88, 5) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (92, 25) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (93, 25) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (94, 25) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (14, 7) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (15, 7) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (96, 7) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (16, 8) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (17, 8) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (97, 8) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (20, 10) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (21, 10) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (18, 9) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (19, 9) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (99, 9) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (98, 10) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (22, 11) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (23, 11) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (24, 12) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (25, 12) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (101, 12) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (100, 11) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (28, 14) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (26, 13) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (90, 14) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (27, 13) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (102, 13) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (89, 14) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (103, 16) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (95, 15) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (1, 1) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (2, 1) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (3, 2) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (4, 2) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (6, 3) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (7, 3) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (9, 4) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (8, 4) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (114, 29) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (113, 29) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (112, 26) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (111, 26) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (110, 27) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (109, 27) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (108, 28) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (107, 28) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (36, 18) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (37, 18) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (115, 18) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (35, 17) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (116, 17) ON CONFLICT DO NOTHING;
INSERT INTO "participants_speaker" ("person_ptr_id", "team_id") VALUES (5, 2) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "participants_speaker_categories" (
    "id" integer NOT NULL,
    "speaker_id" integer NOT NULL,
    "speakercategory_id" integer NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "participants_speakercategory" (
    "id" integer NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "slug" VARCHAR(50) NOT NULL,
    "seq" integer NOT NULL,
    "limit" integer NOT NULL,
    "public" boolean NOT NULL,
    "tournament_id" integer NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "participants_team" (
    "id" integer NOT NULL,
    "reference" VARCHAR(150) NOT NULL,
    "short_reference" VARCHAR(35) NOT NULL,
    "short_name" VARCHAR(56) NOT NULL,
    "long_name" VARCHAR(251) NOT NULL,
    "use_institution_prefix" boolean NOT NULL,
    "type" VARCHAR(1) NOT NULL,
    "emoji" VARCHAR(3),
    "institution_id" integer,
    "tournament_id" integer NOT NULL,
    "code_name" VARCHAR(150) NOT NULL,
    "seed" integer,
    "registration_status" VARCHAR(1) NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (24, '20', '20', 'IITR 20', 'Indian Institute of Technology 20', true, 'N', '🎞', 1, 2, 'Film', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (15, '11', '11', 'IITR 11', 'Indian Institute of Technology 11', true, 'N', '🪕', 1, 2, 'Banjo', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (16, '12', '12', 'IITR 12', 'Indian Institute of Technology 12', true, 'N', '👂', 1, 2, 'Ear', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (1, '1', '1', 'IITR 1', 'Indian Institute of Technology 1', true, 'N', '🌬', 1, 1, 'Blowing', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (5, '1', '1', 'IITR 1', 'Indian Institute of Technology 1', true, 'N', '🍓', 1, 2, 'Strawberry', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (6, '2', '2', 'IITR 2', 'Indian Institute of Technology 2', true, 'N', '⏰', 1, 2, 'Alarm Clock', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (25, '25', '25', 'IITR 25', 'Indian Institute of Technology 25', true, 'N', '🌋', 1, 2, 'Volcano', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (2, '2', '2', 'IITR 2', 'Indian Institute of Technology 2', true, 'N', '🤓', 1, 1, 'Nerd', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (7, '3', '3', 'IITR 3', 'Indian Institute of Technology 3', true, 'N', '😓', 1, 2, 'Cold Sweat', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (8, '4', '4', 'IITR 4', 'Indian Institute of Technology 4', true, 'N', '🏢', 1, 2, 'Office', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (11, '7', '7', 'IITR 7', 'Indian Institute of Technology 7', true, 'N', '🍒', 1, 2, 'Cherries', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (12, '8', '8', 'IITR 8', 'Indian Institute of Technology 8', true, 'N', '🍔', 1, 2, 'Hamburger', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (3, '3', '3', 'IITR 3', 'Indian Institute of Technology 3', true, 'N', '🧩', 1, 1, 'Puzzle Piece', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (13, '9', '9', 'IITR 9', 'Indian Institute of Technology 9', true, 'N', '💔', 1, 2, 'Broken Heart', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (14, '10', '10', 'IITR 10', 'Indian Institute of Technology 10', true, 'N', '🧟', 1, 2, 'Unalive', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (4, '4', '4', 'IITR 4', 'Indian Institute of Technology 4', true, 'N', '🦣', 1, 1, 'Mammoth', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (28, '7', '7', 'IITR 7', 'Indian Institute of Technology 7', true, 'C', '🫓', 1, 1, '', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (27, '6', '6', 'IITR 6', 'Indian Institute of Technology 6', true, 'C', '🪤', 1, 1, '', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (26, '5', '5', 'IITR 5', 'Indian Institute of Technology 5', true, 'C', '⬜', 1, 1, '', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (29, '8', '8', 'IITR 8', 'Indian Institute of Technology 8', true, 'C', '🦶', 1, 1, '', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (18, '14', '14', 'IITR 14', 'Indian Institute of Technology 14', true, 'N', '😬', 1, 2, 'Grimace', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (17, '13', '13', 'IITR 13', 'Indian Institute of Technology 13', true, 'N', '🥥', 1, 2, 'Coconut', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (19, '15', '15', 'IITR 15', 'Indian Institute of Technology 15', true, 'N', '🪂', 1, 2, 'Parachute', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (20, '16', '16', 'IITR 16', 'Indian Institute of Technology 16', true, 'N', '🍴', 1, 2, 'Fork & Knife', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (21, '17', '17', 'IITR 17', 'Indian Institute of Technology 17', true, 'N', '🍼', 1, 2, 'Baby Bottle', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (22, '18', '18', 'IITR 18', 'Indian Institute of Technology 18', true, 'N', '🧶', 1, 2, 'Yarn Ball', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (23, '19', '19', 'IITR 19', 'Indian Institute of Technology 19', true, 'N', '🧪', 1, 2, 'Test Tube', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (9, '1', '1', 'IITR 1', 'Indian Institute of Technology Roorkee 1', true, 'N', '🪝', 1, 1, 'Hook', NULL, 'C') ON CONFLICT DO NOTHING;
INSERT INTO "participants_team" ("id", "reference", "short_reference", "short_name", "long_name", "use_institution_prefix", "type", "emoji", "institution_id", "tournament_id", "code_name", "seed", "registration_status") VALUES (10, '2', '2', 'IITR 2', 'Indian Institute of Technology Roorkee 2', true, 'N', '🙅', 1, 1, 'Block Gesture', NULL, 'C') ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "participants_team_break_categories" (
    "id" integer NOT NULL,
    "team_id" integer NOT NULL,
    "breakcategory_id" integer NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "participants_tournamentinstitution" (
    "id" integer NOT NULL,
    "teams_requested" integer NOT NULL,
    "teams_allocated" integer NOT NULL,
    "adjudicators_requested" integer NOT NULL,
    "adjudicators_allocated" integer NOT NULL,
    "institution_id" integer NOT NULL,
    "tournament_id" integer NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "push_notifications_apnsdevice" (
    "id" integer NOT NULL,
    "name" VARCHAR(255),
    "active" boolean NOT NULL,
    "date_created" timestamp with time zone,
    "device_id" uuid,
    "registration_id" VARCHAR(200) NOT NULL,
    "user_id" integer,
    "application_id" VARCHAR(64),
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "push_notifications_gcmdevice" (
    "id" integer NOT NULL,
    "name" VARCHAR(255),
    "active" boolean NOT NULL,
    "date_created" timestamp with time zone,
    "device_id" bigint,
    "registration_id" text NOT NULL,
    "user_id" integer,
    "cloud_message_type" VARCHAR(3) NOT NULL,
    "application_id" VARCHAR(64),
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "push_notifications_webpushdevice" (
    "id" integer NOT NULL,
    "name" VARCHAR(255),
    "active" boolean NOT NULL,
    "date_created" timestamp with time zone,
    "application_id" VARCHAR(64),
    "registration_id" text NOT NULL,
    "p256dh" VARCHAR(88) NOT NULL,
    "auth" VARCHAR(24) NOT NULL,
    "browser" VARCHAR(10) NOT NULL,
    "user_id" integer,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "push_notifications_wnsdevice" (
    "id" integer NOT NULL,
    "name" VARCHAR(255),
    "active" boolean NOT NULL,
    "date_created" timestamp with time zone,
    "device_id" uuid,
    "registration_id" text NOT NULL,
    "user_id" integer,
    "application_id" VARCHAR(64),
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "registration_answer" (
    "id" integer NOT NULL,
    "answer" text NOT NULL,
    "object_id" integer NOT NULL,
    "question_id" integer NOT NULL,
    "content_type_id" integer NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (1, 'True', 1, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (2, 'clash identification could have been slightly better, some clashes could have been clubbed

weighing metric v slightly unclear', 1, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (5, 'False', 3, 2, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (6, '1) Clashes were misidentified to some extent
2) Certain Opp assertions were credited without any sort of analysis, and some gov arguments that were pitched in three speeches, were rejected for being basic assertions, although analysis was provided.
3) some gov points were not picked up in entirety, opp neither clashed with it, and adj could not provide substantial reason as to why they were not important', 3, 3, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (7, 'True', 4, 2, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (8, 'Correctly identifies a highly messy debate, lack of weighing and messy debate. Agree with her to a lot of extents however I feel a slight understatement of government case', 4, 3, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (3, 'False', 2, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (4, 'clash identification skewed- 1. marriage 2. individuals 3. society

extrapolation of arguments (step in)

fail to justify verdict, gov’s case (arguments/mech/lack of mech) was not talked about much
rebuttals to opp’s case/gov trying to prove opp symmetric not accounted for', 2, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (9, 'True', 5, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (10, 'The OA mostly sounded like the adj found alot of weaknesses in the opp case and how he expected us to exploit them rather than build our case . The adj did not indulge into comparative of our case with OPP but much rather our case with what the adj thought of as an ideal one', 5, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (11, 'True', 6, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (13, 'True', 7, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (15, 'True', 8, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (41, 'True', 22, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (42, 'True', 23, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (43, 'Really good OA', 23, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (44, 'True', 24, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (45, 'Niceee', 24, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (46, 'True', 25, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (47, 'Really good OA', 25, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (48, 'False', 26, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (49, 'True', 27, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (50, 'True', 28, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (51, 'True', 29, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (52, 'Great oa', 29, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (53, 'True', 30, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (54, 'Good oa', 30, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (55, 'True', 31, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (56, 'Great oa', 31, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (57, 'True', 32, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (58, 'Aptly judging impacts, while cancelling out minor clashes with similar weigh in, and aptly calling out weak mech and few hyperbolic points where government or opp didn''t provide sufficient mech.', 32, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (59, 'True', 33, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (60, 'Aptly provided impact judgements, while aptly calling out lack of our mech and out of proportion claims without appropriate mech.', 33, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (61, 'True', 34, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (69, 'True', 38, 2, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (70, 'True', 39, 2, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (71, 'Lack of clarity on one clash, otherwise decent analysis', 39, 3, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (72, 'True', 40, 2, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (73, 'Correct call, slight lack of depth in analysis', 40, 3, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (74, 'False', 41, 2, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (76, 'True', 42, 2, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (82, 'True', 45, 2, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (12, 'Largely agreed with the OA, Agreed with how most clashes were credited, did not agree on how the Social Exclusion and Orthodoxy was explained, because I felt that Social Exclusion was stronger on opposition side, especially around LGBTQ right', 6, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (14, 'Most of the clashes were identified at a very surface level and were not engaged with in depth', 7, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (16, 'Mostly about how a lot of the clashes were just given as a wash and there was no clear resolution just a lot of handwavy explanation', 8, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (17, 'True', 9, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (18, 'Pretty reasonable OA while connecting most of the clashes', 9, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (19, 'True', 10, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (20, 'All the clashes were largely right, Did not understand how the minority clash was credited to the side government when people already living in those region already live under oppression', 10, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (21, 'True', 11, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (22, 'The clashes were largely right, however the explanation aroundd Religious Minority and LGBTQ was particulary thin and was largely comparing statements', 11, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (23, 'True', 12, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (24, 'The clashes were all right, apart from that close calls on clashes were clearly communicated, and clashes like Local Development & Pollution etc were correctly washed', 12, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (25, 'True', 13, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (26, 'Good OA, good weighing of sub clashes', 13, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (27, 'False', 14, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (28, 'Pretty good OA and analysis of the clashes and metric seems to be in check with the verdict', 14, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (29, 'False', 15, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (30, 'There was a clarity of the debate and clash identification, however, major clashes were discredited while a lot of minor clashes were identified and given more importance, without being weighed against each other. Secondly, the major gap in the debate was how focus on the motion as an actor analysis motion was not present, and might have flipped the verdict', 15, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (31, 'False', 16, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (32, 'Did not agree with the clash identification, ignored a lot of the major chuck of our arguments around major clashes, simply because they were treated as a sub clash. As did a lot of weighing on their own with a lot of biased input.', 16, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (33, 'True', 17, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (34, 'True', 18, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (35, 'True', 19, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (36, 'Good identification of clashes and right call for each clash so good oa overall', 19, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (37, 'True', 20, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (38, 'I mean it was thorough but it got too long and rather than explaining each speaker skip directly to stakeholder analysis and to make it a little concise and to explain better why you gave one clash over by other and maybe better identification of major clashes', 20, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (39, 'True', 21, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (40, 'Agreed on the opp''s miss on flagging out of impacts a bit earlier in the debate. However, the analysis over framing in the sense that the adj bought into opp''s frame but still credited gov''s argument still based off of their broken charac, was kind of a wrong approach...
At that, a better approach is always to specify which framing was bought into, else the OA sounds a bit biased, or confusing.
Otherwise good OA, really like the burden analysis, to what extent each side fulfilled theirs and overall impacts analysed in general', 21, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (62, 'Aptly judging impacts, while Aptly calling out our lack of mech and out of proportion points that we didn''t provide appropriate mech for.', 34, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (63, 'False', 35, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (64, 'Good clash by clash analysis, but oa made the judgement seem much more one sided rather than balanced as evident by the impact analysis(although informative and good).', 35, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (65, 'True', 36, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (66, 'metrics were clearly given, clash by clash analysis was accurate. points from both sides were credited for.', 36, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (67, 'True', 37, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (68, 'well structured oa , clashes mentioned. but some clashes were judged more on the expectation of the debate than the debate itself. The claim made by Gov about direct speaking up instead of a sidelined approach was mechanized more than it had been credited for in the oa', 37, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (75, 'Very long and tiring oa. And some points were not credited.', 41, 3, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (77, 'The reasoning was correct in each clash but the structure felt off. Which led to prolonged oa and a little confusion as to each matrix. Try to reduce your explanations and keep them to the concise points on why one house takes over the other. Additionally try spending more time on convincing the losing house which was neglected in the oa.', 42, 3, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (78, 'False', 43, 2, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (79, 'i think that adj was able to track the debate pretty well and analysis was decent . but over credited og when their claims could only be credited when their premise was set and the premise was lacking. for the reasons we were placed above cg we should be placed above og or be placed last but since the premise for neither gov bench was proven and adj  (arya) answered he questionin a highly biased factor by giving analysis that neither gov bench brought', 43, 3, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (80, 'True', 44, 2, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (81, 'The clash analysis was appropriate, while call was expected and good, good judgment on lack of mech, or absence of likelihood judgement, however there were a few factual fallacies in the some of the information imparted by a few houses, although not a big problem.', 44, 3, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (83, 'Mostly good with all clashes and explanations...but maybe few clashes were not properly weighed', 45, 3, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (84, 'True', 46, 2, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (85, 'Great oa. Proper argument were identified and clashes were clearly stated.', 46, 3, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (86, 'True', 47, 2, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (87, 'fair analysis and following of the debate. dont agree with the adj''s call between co and og but their logic makes sense . however explanation of oa for losing houses couldve been better for their clarity and wouldve helped to connect better with what was wrong with their case by maybe including specifics from their caseliens and comparing witht heir opening bench to prove derivative nature', 47, 3, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (88, 'True', 48, 2, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (89, 'Though good oa and clear verdict ,but felt like no arguments from co side were credited at all as well as a little bit tracking was not there for eg how labour markets point of og was not credited', 48, 3, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (90, 'True', 49, 2, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (91, 'Agree with the decision but as og, we felt a specific point about negotiating power based on its geographical location was given entirely to cg even though it was brought up by us and discussed in both pm and dpm speeches. Other than that, oa was good.', 49, 3, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (92, 'Yes', 50, 2, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (98, 'True', 52, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (93, 'it felt largely that the oa was not well explained with repsect to resolution of clashes. agree that the debate wentt largely parallel but at that needed explicit weighing for clear resolution when the debate according the adj was really really close . also felt like adj bought moreinto govs framings without explaining why and discredited some bits of our caseliens due to lack of sufficient mech but even at the extent they were fleshed should havebeen midly credited', 50, 3, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (94, 'it felt largely that the oa was not well explained with repsect to resolution of clashes. agree that the debate wentt largely parallel but at that needed explicit weighing for clear resolution when the debate according the adj was really really close . also felt like adj bought moreinto govs framings without explaining why and discredited some bits of our caseliens due to lack of sufficient mech but even at the extent they were fleshed should havebeen midly credited', 50, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (95, 'Yes', 50, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (96, 'Yes', 51, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (97, 'Rightly identified clashes but massive lack of weigh and a very surface level analysis of the argumentation done by both sides', 51, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (99, 'Oa was great. Close comparisons were clearly explained and the metrics to judge the debate on was well defined. Could explain more on what was not bought and why ?', 52, 5, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (100, 'False', 53, 4, 18) ON CONFLICT DO NOTHING;
INSERT INTO "registration_answer" ("id", "answer", "object_id", "question_id", "content_type_id") VALUES (101, 'Oa was messy. Reasons as to why clashes were given to a side were unclear. Too many clashes identified which led to confused reasoning as to what was important in the debate and on what metric was the debate judged. Questions were answered in a manner which leads one to believe that the individual is biased towards a particular side and is not clear as to what was important in the debate. Proper tracking of the debate and understanding of speaker scores was also missing.', 53, 5, 18) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "registration_invitation" (
    "id" bigint NOT NULL,
    "url_key" VARCHAR(50) NOT NULL,
    "created_on" timestamp with time zone NOT NULL,
    "for_content_type_id" integer NOT NULL,
    "institution_id" integer,
    "team_id" integer,
    "tournament_id" integer NOT NULL,
    "slot_transfer_request_id" bigint,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "registration_slottransferrequest" (
    "id" bigint NOT NULL,
    "teams_transferred" integer NOT NULL,
    "adjudicators_transferred" integer NOT NULL,
    "receiving_institution_name" VARCHAR(100) NOT NULL,
    "receiving_institution_email" VARCHAR(254) NOT NULL,
    "status" VARCHAR(1) NOT NULL,
    "created_at" timestamp with time zone NOT NULL,
    "updated_at" timestamp with time zone NOT NULL,
    "receiving_institution_id" integer,
    "source_tournament_institution_id" integer NOT NULL,
    "tournament_id" integer NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "results_ballotsubmission" (
    "id" integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    "version" integer NOT NULL,
    "submitter_type" VARCHAR(1) NOT NULL,
    "confirmed" boolean NOT NULL,
    "confirm_timestamp" timestamp with time zone,
    "ip_address" inet,
    "discarded" boolean NOT NULL,
    "confirmer_id" integer,
    "debate_id" integer NOT NULL,
    "motion_id" integer,
    "submitter_id" integer,
    "participant_submitter_id" integer,
    "single_adj" boolean NOT NULL,
    "private_url" boolean NOT NULL,
    "forfeit" boolean NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (27, '2026-06-01T17:59:09.189748+00:00'::timestamptz, 2, 'T', true, '2026-06-02T04:38:34.862869+00:00'::timestamptz, '103.252.25.60', false, 1, 12, 9, 1, NULL, false, false, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (6, '2026-05-21T18:28:34.736776+00:00'::timestamptz, 1, 'P', false, NULL, '49.43.106.195', false, NULL, 4, 3, NULL, 56, true, true, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (7, '2026-05-21T18:28:59.729496+00:00'::timestamptz, 2, 'P', false, NULL, '103.252.25.60', false, NULL, 4, 3, NULL, 53, true, true, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (8, '2026-05-21T18:29:13.034106+00:00'::timestamptz, 3, 'P', false, NULL, '49.36.179.75', false, NULL, 4, 3, NULL, 57, true, true, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (9, '2026-05-21T18:34:30.026696+00:00'::timestamptz, 4, 'P', false, NULL, '49.42.222.172', false, NULL, 4, 3, NULL, 55, true, true, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (10, '2026-05-21T18:36:03.836181+00:00'::timestamptz, 5, 'T', false, '2026-05-21T18:36:05.021555+00:00'::timestamptz, '103.252.25.60', false, 1, 4, 3, 1, NULL, false, false, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (11, '2026-05-21T19:19:54.031303+00:00'::timestamptz, 6, 'T', true, '2026-05-21T19:19:55.052470+00:00'::timestamptz, '103.252.25.60', false, 1, 4, 3, 1, NULL, false, false, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (12, '2026-05-22T11:04:08.964756+00:00'::timestamptz, 1, 'P', false, NULL, '139.5.255.40', false, NULL, 5, 4, NULL, 51, true, true, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (13, '2026-05-22T11:24:00.579946+00:00'::timestamptz, 2, 'P', false, NULL, '49.43.88.56', false, NULL, 5, 4, NULL, 54, true, true, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (14, '2026-05-22T11:41:18.158657+00:00'::timestamptz, 3, 'T', false, '2026-05-22T11:41:21.080315+00:00'::timestamptz, '139.5.255.98', false, 2, 5, 4, 2, NULL, false, false, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (15, '2026-05-22T11:46:00.457168+00:00'::timestamptz, 4, 'T', true, '2026-05-22T11:46:01.376263+00:00'::timestamptz, '139.5.255.90', false, 2, 5, 4, 2, NULL, false, false, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (16, '2026-05-24T14:23:58.906348+00:00'::timestamptz, 1, 'P', false, NULL, '223.177.142.6', false, NULL, 7, 5, NULL, 87, true, true, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (17, '2026-05-24T14:24:47.450565+00:00'::timestamptz, 2, 'T', true, '2026-05-24T14:24:48.573182+00:00'::timestamptz, '152.57.121.225', false, 1, 7, 5, 1, NULL, false, false, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (18, '2026-05-25T11:53:28.591282+00:00'::timestamptz, 1, 'P', false, NULL, '139.5.255.246', false, NULL, 8, 6, NULL, 51, true, true, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (19, '2026-05-25T12:44:08.119035+00:00'::timestamptz, 2, 'T', true, '2026-05-25T12:44:09.087606+00:00'::timestamptz, '139.5.255.246', false, 2, 8, 6, 2, NULL, false, false, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (20, '2026-05-26T18:39:28.620111+00:00'::timestamptz, 1, 'P', false, NULL, '157.48.224.155', false, NULL, 9, 7, NULL, 87, true, true, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (21, '2026-05-26T19:30:10.872363+00:00'::timestamptz, 2, 'P', false, NULL, '152.58.177.224', false, NULL, 9, 7, NULL, 55, true, true, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (22, '2026-05-26T19:34:47.233349+00:00'::timestamptz, 3, 'T', true, '2026-05-26T19:36:04.919455+00:00'::timestamptz, '152.57.43.133', false, 1, 9, 7, 1, NULL, false, false, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (23, '2026-05-28T18:34:36.292629+00:00'::timestamptz, 1, 'P', true, '2026-05-28T18:44:04.496663+00:00'::timestamptz, '122.171.16.93', false, 1, 10, 1, NULL, 5, false, true, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (4, '2026-06-10T16:23:37.341100+00:00'::timestamptz, 1, 'T', true, '2026-06-10T16:23:37.833320+00:00'::timestamptz, '103.252.25.48', false, 1, 10, 7, 1, NULL, false, false, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (24, '2026-05-28T18:36:33.593786+00:00'::timestamptz, 2, 'P', false, NULL, '106.222.207.241', true, NULL, 10, 1, NULL, 104, false, true, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (25, '2026-05-29T10:45:47.914905+00:00'::timestamptz, 1, 'P', true, '2026-05-29T11:56:30.428692+00:00'::timestamptz, '103.37.201.132', false, 2, 11, 8, NULL, 106, false, true, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (2, '2026-05-20T14:30:59.641412+00:00'::timestamptz, 1, 'P', false, NULL, '139.5.255.180', true, NULL, 2, 2, NULL, 51, true, true, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (26, '2026-06-01T17:39:56.778164+00:00'::timestamptz, 1, 'P', false, NULL, '43.224.128.131', false, NULL, 12, 9, NULL, 61, true, true, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_ballotsubmission" ("id", "timestamp", "version", "submitter_type", "confirmed", "confirm_timestamp", "ip_address", "discarded", "confirmer_id", "debate_id", "motion_id", "submitter_id", "participant_submitter_id", "single_adj", "private_url", "forfeit") VALUES (3, '2026-05-20T14:33:45.523067+00:00'::timestamptz, 2, 'P', false, NULL, '106.219.171.141', true, NULL, 2, 2, NULL, 50, true, true, false) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "results_scorecriterion" (
    "id" integer NOT NULL,
    "name" VARCHAR(20) NOT NULL,
    "seq" integer NOT NULL,
    "weight" double precision NOT NULL,
    "min_score" double precision NOT NULL,
    "max_score" double precision NOT NULL,
    "step" double precision NOT NULL,
    "required" boolean NOT NULL,
    "tournament_id" integer NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "results_speakercriterionscore" (
    "id" integer NOT NULL,
    "score" double precision NOT NULL,
    "criterion_id" integer NOT NULL,
    "speaker_score_id" integer NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "results_speakercriterionscorebyadj" (
    "id" integer NOT NULL,
    "score" double precision NOT NULL,
    "criterion_id" integer NOT NULL,
    "speaker_score_by_adj_id" integer NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "results_speakerscore" (
    "id" integer NOT NULL,
    "score" double precision NOT NULL,
    "position" integer NOT NULL,
    "ghost" boolean NOT NULL,
    "ballot_submission_id" integer NOT NULL,
    "debate_team_id" integer NOT NULL,
    "speaker_id" integer NOT NULL,
    "rank" smallint,
    PRIMARY KEY ("id")
);
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (9, 73.0, 1, false, 2, 5, 13, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (10, 76.0, 2, false, 2, 5, 91, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (11, 75.0, 3, false, 2, 5, 12, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (12, 36.0, 4, false, 2, 5, 13, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (13, 74.0, 1, false, 2, 6, 10, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (14, 75.0, 2, false, 2, 6, 88, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (15, 73.0, 3, false, 2, 6, 11, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (16, 36.0, 4, false, 2, 6, 88, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (56, 38.0, 4, false, 7, 10, 16, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (17, 72.0, 1, false, 3, 5, 13, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (18, 72.0, 2, false, 3, 5, 91, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (19, 72.0, 3, false, 3, 5, 12, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (20, 38.0, 4, false, 3, 5, 13, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (21, 73.0, 1, false, 3, 6, 10, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (22, 73.0, 2, false, 3, 6, 88, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (23, 72.0, 3, false, 3, 6, 11, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (24, 39.0, 4, false, 3, 6, 88, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (100, 38.5, 4, false, 13, 11, 21, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (101, 77.0, 1, false, 13, 12, 18, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (102, 76.0, 2, false, 13, 12, 99, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (103, 75.0, 3, false, 13, 12, 19, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (104, 38.0, 4, false, 13, 12, 18, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (66, 73.0, 2, false, 9, 9, 96, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (67, 75.0, 3, false, 9, 9, 15, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (68, 37.0, 4, false, 9, 9, 14, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (69, 77.0, 1, false, 9, 10, 97, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (70, 75.0, 2, false, 9, 10, 16, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (71, 76.0, 3, false, 9, 10, 17, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (72, 37.0, 4, false, 9, 10, 16, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (73, 76.0, 1, false, 10, 9, 14, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (74, 74.25, 2, false, 10, 9, 96, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (75, 76.25, 3, false, 10, 9, 15, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (76, 37.5, 4, false, 10, 9, 96, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (77, 78.0, 1, false, 10, 10, 97, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (93, 75.0, 1, false, 12, 12, 18, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (94, 74.0, 2, false, 12, 12, 99, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (95, 75.0, 3, false, 12, 12, 19, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (96, 37.0, 4, false, 12, 12, 18, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (97, 77.0, 1, false, 13, 11, 98, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (98, 77.0, 2, false, 13, 11, 21, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (99, 77.0, 3, false, 13, 11, 20, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (108, 38.0, 4, false, 14, 11, 21, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (109, 75.6666666666667, 1, false, 14, 12, 18, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (110, 75.0, 2, false, 14, 12, 99, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (111, 75.0, 3, false, 14, 12, 19, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (112, 37.3333333333333, 4, false, 14, 12, 18, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (113, 75.6666666666667, 1, false, 15, 11, 98, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (114, 76.0, 2, false, 15, 11, 21, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (115, 75.6666666666667, 3, false, 15, 11, 20, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (176, 38.0, 4, false, 22, 20, 31, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (193, 75.0, 1, false, 25, 25, 108, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (194, 74.0, 2, false, 25, 25, 107, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (25, 75.0, 1, false, 4, 27, 31, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (26, 72.0, 2, false, 4, 27, 29, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (27, 73.0, 3, false, 4, 27, 30, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (28, 36.0, 4, false, 4, 27, 31, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (29, 75.0, 1, false, 4, 28, 32, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (30, 76.0, 2, false, 4, 28, 33, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (31, 72.0, 3, true, 4, 28, 32, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (32, 38.0, 4, false, 4, 28, 33, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (41, 80.0, 1, false, 6, 9, 14, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (42, 78.0, 2, false, 6, 9, 96, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (43, 81.0, 3, false, 6, 9, 15, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (44, 39.0, 4, false, 6, 9, 14, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (45, 83.0, 1, false, 6, 10, 97, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (46, 81.0, 2, false, 6, 10, 16, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (47, 80.0, 3, false, 6, 10, 17, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (48, 39.0, 4, false, 6, 10, 16, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (49, 74.0, 1, false, 7, 9, 14, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (50, 73.0, 2, false, 7, 9, 96, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (51, 74.0, 3, false, 7, 9, 15, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (52, 36.5, 4, false, 7, 9, 96, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (53, 76.0, 1, false, 7, 10, 97, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (54, 75.0, 2, false, 7, 10, 16, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (55, 76.0, 3, false, 7, 10, 17, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (105, 75.6666666666667, 1, false, 14, 11, 98, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (106, 76.0, 2, false, 14, 11, 21, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (107, 75.6666666666667, 3, false, 14, 11, 20, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (57, 75.0, 1, false, 8, 9, 14, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (58, 73.0, 2, false, 8, 9, 96, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (59, 75.0, 3, false, 8, 9, 15, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (60, 37.5, 4, false, 8, 9, 14, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (61, 76.0, 1, false, 8, 10, 97, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (62, 76.0, 2, false, 8, 10, 16, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (63, 76.0, 3, false, 8, 10, 17, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (64, 37.0, 4, false, 8, 10, 16, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (65, 75.0, 1, false, 9, 9, 14, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (78, 76.75, 2, false, 10, 10, 16, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (79, 77.0, 3, false, 10, 10, 17, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (80, 37.75, 4, false, 10, 10, 16, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (81, 76.0, 1, false, 11, 9, 14, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (82, 74.25, 2, false, 11, 9, 96, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (83, 76.25, 3, false, 11, 9, 15, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (84, 37.5, 4, false, 11, 9, 14, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (85, 78.0, 1, false, 11, 10, 97, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (86, 76.75, 2, false, 11, 10, 16, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (87, 77.0, 3, false, 11, 10, 17, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (88, 37.75, 4, false, 11, 10, 16, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (89, 75.0, 1, false, 12, 11, 98, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (90, 76.0, 2, false, 12, 11, 21, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (91, 74.0, 3, false, 12, 11, 20, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (92, 38.0, 4, false, 12, 11, 21, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (116, 38.0, 4, false, 15, 11, 21, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (117, 75.6666666666667, 1, false, 15, 12, 18, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (185, 73.0, 1, false, 24, 21, 4, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (186, 75.0, 2, false, 24, 21, 3, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (187, 75.0, 1, false, 24, 22, 7, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (188, 72.0, 2, false, 24, 22, 6, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (189, 72.0, 1, false, 24, 23, 1, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (118, 75.0, 2, false, 15, 12, 99, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (119, 75.0, 3, false, 15, 12, 19, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (120, 37.5, 4, false, 15, 12, 18, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (122, 76.0, 2, false, 16, 15, 100, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (123, 77.0, 3, false, 16, 15, 22, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (124, 38.0, 4, false, 16, 15, 100, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (125, 76.0, 1, false, 16, 16, 24, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (121, 76.0, 1, false, 16, 15, 23, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (126, 74.0, 2, false, 16, 16, 101, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (127, 78.0, 3, false, 16, 16, 25, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (128, 37.0, 4, false, 16, 16, 101, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (129, 76.0, 1, false, 17, 15, 23, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (130, 76.0, 2, false, 17, 15, 100, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (131, 77.0, 3, false, 17, 15, 22, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (132, 38.0, 4, false, 17, 15, 100, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (133, 76.0, 1, false, 17, 16, 24, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (134, 74.0, 2, false, 17, 16, 101, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (135, 78.0, 3, false, 17, 16, 25, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (136, 37.0, 4, false, 17, 16, 101, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (137, 72.0, 1, false, 18, 17, 89, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (138, 74.0, 2, false, 18, 17, 29, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (139, 73.0, 3, false, 18, 17, 28, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (140, 37.0, 4, false, 18, 17, 29, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (141, 73.0, 1, false, 18, 18, 102, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (142, 75.0, 2, false, 18, 18, 27, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (143, 73.0, 3, false, 18, 18, 26, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (144, 37.0, 4, false, 18, 18, 27, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (145, 73.0, 1, false, 19, 17, 89, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (146, 73.5, 2, false, 19, 17, 29, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (147, 73.0, 3, false, 19, 17, 28, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (148, 36.75, 4, false, 19, 17, 29, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (149, 73.5, 1, false, 19, 18, 102, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (150, 75.0, 2, false, 19, 18, 27, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (151, 73.5, 3, false, 19, 18, 26, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (152, 36.75, 4, false, 19, 18, 27, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (153, 74.0, 1, true, 20, 19, 32, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (154, 74.0, 2, false, 20, 19, 33, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (155, 75.0, 3, false, 20, 19, 32, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (156, 37.0, 4, false, 20, 19, 33, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (157, 75.0, 1, true, 20, 20, 30, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (158, 73.0, 2, false, 20, 20, 31, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (159, 75.0, 3, false, 20, 20, 30, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (160, 38.0, 4, false, 20, 20, 31, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (161, 78.0, 1, false, 21, 19, 32, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (162, 76.0, 2, false, 21, 19, 33, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (163, 77.0, 3, true, 21, 19, 32, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (164, 38.0, 4, false, 21, 19, 33, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (165, 77.0, 1, false, 21, 20, 30, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (166, 75.0, 2, false, 21, 20, 31, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (167, 75.0, 3, true, 21, 20, 30, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (168, 37.0, 4, false, 21, 20, 31, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (169, 74.0, 1, false, 22, 19, 32, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (170, 74.0, 2, false, 22, 19, 33, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (171, 75.0, 3, true, 22, 19, 32, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (172, 37.0, 4, false, 22, 19, 33, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (173, 75.0, 1, false, 22, 20, 30, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (174, 73.0, 2, false, 22, 20, 31, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (175, 75.0, 3, true, 22, 20, 30, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (177, 73.0, 1, false, 23, 21, 4, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (178, 76.0, 2, false, 23, 21, 3, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (179, 75.0, 1, false, 23, 22, 7, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (180, 73.0, 2, false, 23, 22, 6, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (181, 73.0, 1, false, 23, 23, 1, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (182, 72.0, 2, false, 23, 23, 2, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (183, 74.0, 1, false, 23, 24, 9, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (184, 77.0, 2, false, 23, 24, 8, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (190, 72.0, 2, false, 24, 23, 2, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (191, 76.0, 1, false, 24, 24, 9, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (192, 74.0, 2, false, 24, 24, 8, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (195, 76.0, 1, false, 25, 26, 109, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (196, 76.0, 2, false, 25, 26, 110, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (197, 79.0, 1, false, 25, 27, 111, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (198, 77.0, 2, false, 25, 27, 112, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (199, 74.0, 1, false, 25, 28, 114, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (200, 73.0, 2, false, 25, 28, 113, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (201, 76.0, 1, false, 26, 29, 37, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (202, 74.0, 2, false, 26, 29, 115, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (203, 77.0, 3, false, 26, 29, 36, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (204, 36.0, 4, false, 26, 29, 115, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (205, 75.0, 1, false, 26, 30, 34, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (206, 77.0, 2, false, 26, 30, 35, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (207, 74.0, 3, false, 26, 30, 116, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (208, 36.5, 4, false, 26, 30, 34, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (215, 75.0, 3, false, 27, 30, 116, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (216, 37.5, 4, false, 27, 30, 34, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (209, 75.0, 1, false, 27, 29, 37, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (210, 74.0, 2, false, 27, 29, 115, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (211, 75.0, 3, false, 27, 29, 36, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (212, 36.0, 4, false, 27, 29, 115, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (213, 77.0, 1, false, 27, 30, 34, NULL) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscore" ("id", "score", "position", "ghost", "ballot_submission_id", "debate_team_id", "speaker_id", "rank") VALUES (214, 78.0, 2, false, 27, 30, 35, NULL) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "results_speakerscorebyadj" (
    "id" integer NOT NULL,
    "score" double precision NOT NULL,
    "position" integer NOT NULL,
    "ballot_submission_id" integer NOT NULL,
    "debate_adjudicator_id" integer NOT NULL,
    "debate_team_id" integer NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (1, 72.0, 1, 4, 2, 5) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (2, 72.0, 2, 4, 2, 5) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (3, 72.0, 3, 4, 2, 5) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (4, 38.0, 4, 4, 2, 5) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (5, 73.0, 1, 4, 2, 6) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (6, 73.0, 2, 4, 2, 6) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (7, 72.0, 3, 4, 2, 6) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (8, 39.0, 4, 4, 2, 6) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (25, 74.0, 1, 10, 10, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (26, 73.0, 2, 10, 10, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (27, 74.0, 3, 10, 10, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (28, 36.5, 4, 10, 10, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (29, 76.0, 1, 10, 10, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (30, 75.0, 2, 10, 10, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (31, 76.0, 3, 10, 10, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (32, 38.0, 4, 10, 10, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (33, 80.0, 1, 10, 7, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (34, 78.0, 2, 10, 7, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (35, 81.0, 3, 10, 7, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (36, 39.0, 4, 10, 7, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (37, 83.0, 1, 10, 7, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (38, 81.0, 2, 10, 7, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (39, 80.0, 3, 10, 7, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (40, 39.0, 4, 10, 7, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (41, 75.0, 1, 10, 8, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (42, 73.0, 2, 10, 8, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (43, 75.0, 3, 10, 8, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (44, 37.5, 4, 10, 8, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (45, 76.0, 1, 10, 8, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (46, 76.0, 2, 10, 8, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (47, 76.0, 3, 10, 8, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (48, 37.0, 4, 10, 8, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (49, 75.0, 1, 10, 12, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (50, 73.0, 2, 10, 12, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (51, 75.0, 3, 10, 12, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (52, 37.0, 4, 10, 12, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (53, 77.0, 1, 10, 12, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (54, 75.0, 2, 10, 12, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (55, 76.0, 3, 10, 12, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (56, 37.0, 4, 10, 12, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (57, 74.0, 1, 11, 10, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (58, 73.0, 2, 11, 10, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (59, 74.0, 3, 11, 10, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (60, 36.5, 4, 11, 10, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (61, 76.0, 1, 11, 10, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (62, 75.0, 2, 11, 10, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (63, 76.0, 3, 11, 10, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (64, 38.0, 4, 11, 10, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (65, 80.0, 1, 11, 7, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (66, 78.0, 2, 11, 7, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (67, 81.0, 3, 11, 7, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (68, 39.0, 4, 11, 7, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (69, 83.0, 1, 11, 7, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (70, 81.0, 2, 11, 7, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (71, 80.0, 3, 11, 7, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (72, 39.0, 4, 11, 7, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (161, 72.0, 1, 19, 19, 17) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (162, 74.0, 2, 19, 19, 17) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (163, 73.0, 3, 19, 19, 17) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (164, 37.0, 4, 19, 19, 17) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (165, 73.0, 1, 19, 19, 18) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (166, 75.0, 2, 19, 19, 18) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (167, 73.0, 3, 19, 19, 18) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (168, 37.0, 4, 19, 19, 18) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (169, 74.0, 1, 19, 22, 17) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (9, 73.0, 1, 4, 3, 5) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (10, 76.0, 2, 4, 3, 5) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (11, 75.0, 3, 4, 3, 5) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (12, 36.0, 4, 4, 3, 5) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (13, 74.0, 1, 4, 3, 6) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (14, 75.0, 2, 4, 3, 6) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (15, 73.0, 3, 4, 3, 6) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (16, 36.0, 4, 4, 3, 6) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (73, 75.0, 1, 11, 8, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (74, 73.0, 2, 11, 8, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (75, 75.0, 3, 11, 8, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (76, 37.5, 4, 11, 8, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (77, 76.0, 1, 11, 8, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (78, 76.0, 2, 11, 8, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (79, 76.0, 3, 11, 8, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (80, 37.0, 4, 11, 8, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (17, 75.0, 1, 4, 11, 27) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (18, 72.0, 2, 4, 11, 27) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (19, 73.0, 3, 4, 11, 27) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (20, 36.0, 4, 4, 11, 27) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (21, 75.0, 1, 4, 11, 28) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (22, 76.0, 2, 4, 11, 28) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (23, 72.0, 3, 4, 11, 28) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (24, 38.0, 4, 4, 11, 28) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (81, 75.0, 1, 11, 12, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (82, 73.0, 2, 11, 12, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (83, 75.0, 3, 11, 12, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (84, 37.0, 4, 11, 12, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (85, 77.0, 1, 11, 12, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (86, 75.0, 2, 11, 12, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (87, 76.0, 3, 11, 12, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (88, 37.0, 4, 11, 12, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (89, 75.0, 1, 14, 13, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (90, 76.0, 2, 14, 13, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (91, 74.0, 3, 14, 13, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (92, 38.0, 4, 14, 13, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (93, 75.0, 1, 14, 13, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (94, 74.0, 2, 14, 13, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (95, 75.0, 3, 14, 13, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (96, 37.0, 4, 14, 13, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (97, 75.0, 1, 14, 14, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (98, 75.0, 2, 14, 14, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (99, 76.0, 3, 14, 14, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (100, 37.5, 4, 14, 14, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (101, 75.0, 1, 14, 14, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (102, 75.0, 2, 14, 14, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (103, 75.0, 3, 14, 14, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (104, 37.0, 4, 14, 14, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (105, 72.0, 1, 14, 15, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (106, 72.0, 2, 14, 15, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (107, 74.0, 3, 14, 15, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (108, 36.0, 4, 14, 15, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (109, 74.0, 1, 14, 15, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (110, 73.0, 2, 14, 15, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (111, 73.0, 3, 14, 15, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (112, 37.0, 4, 14, 15, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (170, 73.0, 2, 19, 22, 17) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (171, 73.0, 3, 19, 22, 17) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (172, 36.5, 4, 19, 22, 17) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (173, 74.0, 1, 19, 22, 18) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (174, 75.0, 2, 19, 22, 18) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (175, 74.0, 3, 19, 22, 18) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (193, 78.0, 1, 22, 25, 19) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (194, 76.0, 2, 22, 25, 19) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (113, 77.0, 1, 14, 16, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (114, 77.0, 2, 14, 16, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (115, 77.0, 3, 14, 16, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (116, 38.5, 4, 14, 16, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (117, 77.0, 1, 14, 16, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (118, 76.0, 2, 14, 16, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (119, 75.0, 3, 14, 16, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (120, 38.0, 4, 14, 16, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (121, 75.0, 1, 15, 13, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (122, 76.0, 2, 15, 13, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (123, 74.0, 3, 15, 13, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (124, 38.0, 4, 15, 13, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (125, 75.0, 1, 15, 13, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (126, 74.0, 2, 15, 13, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (127, 75.0, 3, 15, 13, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (128, 37.0, 4, 15, 13, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (129, 75.0, 1, 15, 14, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (130, 75.0, 2, 15, 14, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (131, 76.0, 3, 15, 14, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (132, 37.5, 4, 15, 14, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (133, 75.0, 1, 15, 14, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (134, 75.0, 2, 15, 14, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (135, 75.0, 3, 15, 14, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (136, 37.5, 4, 15, 14, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (137, 72.0, 1, 15, 15, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (138, 72.0, 2, 15, 15, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (139, 74.0, 3, 15, 15, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (140, 36.0, 4, 15, 15, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (141, 74.0, 1, 15, 15, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (142, 73.0, 2, 15, 15, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (143, 73.0, 3, 15, 15, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (144, 37.0, 4, 15, 15, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (145, 77.0, 1, 15, 16, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (146, 77.0, 2, 15, 16, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (147, 77.0, 3, 15, 16, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (148, 38.5, 4, 15, 16, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (149, 77.0, 1, 15, 16, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (150, 76.0, 2, 15, 16, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (151, 75.0, 3, 15, 16, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (152, 38.0, 4, 15, 16, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (153, 76.0, 1, 17, 18, 15) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (154, 76.0, 2, 17, 18, 15) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (155, 77.0, 3, 17, 18, 15) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (156, 38.0, 4, 17, 18, 15) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (157, 76.0, 1, 17, 18, 16) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (158, 74.0, 2, 17, 18, 16) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (159, 78.0, 3, 17, 18, 16) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (160, 37.0, 4, 17, 18, 16) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (176, 36.5, 4, 19, 22, 18) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (177, 74.0, 1, 19, 23, 17) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (178, 75.0, 2, 19, 23, 17) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (179, 74.0, 3, 19, 23, 17) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (180, 37.5, 4, 19, 23, 17) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (181, 74.0, 1, 19, 23, 18) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (182, 74.0, 2, 19, 23, 18) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (183, 74.0, 3, 19, 23, 18) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (184, 37.0, 4, 19, 23, 18) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (185, 74.0, 1, 22, 24, 19) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (186, 74.0, 2, 22, 24, 19) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (187, 75.0, 3, 22, 24, 19) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (188, 37.0, 4, 22, 24, 19) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (189, 75.0, 1, 22, 24, 20) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (190, 73.0, 2, 22, 24, 20) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (191, 75.0, 3, 22, 24, 20) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (192, 38.0, 4, 22, 24, 20) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (195, 77.0, 3, 22, 25, 19) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (196, 38.0, 4, 22, 25, 19) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (197, 77.0, 1, 22, 25, 20) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (198, 75.0, 2, 22, 25, 20) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (199, 75.0, 3, 22, 25, 20) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (200, 37.0, 4, 22, 25, 20) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (210, 74.0, 2, 27, 31, 29) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (211, 77.0, 3, 27, 31, 29) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (212, 36.0, 4, 27, 31, 29) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (213, 75.0, 1, 27, 31, 30) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (214, 77.0, 2, 27, 31, 30) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (215, 74.0, 3, 27, 31, 30) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (216, 36.5, 4, 27, 31, 30) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (201, 75.0, 1, 27, 30, 29) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (202, 74.0, 2, 27, 30, 29) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (203, 75.0, 3, 27, 30, 29) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (204, 36.0, 4, 27, 30, 29) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (205, 77.0, 1, 27, 30, 30) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (206, 78.0, 2, 27, 30, 30) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (207, 75.0, 3, 27, 30, 30) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (208, 37.5, 4, 27, 30, 30) ON CONFLICT DO NOTHING;
INSERT INTO "results_speakerscorebyadj" ("id", "score", "position", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (209, 76.0, 1, 27, 31, 29) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "results_teamscore" (
    "id" integer NOT NULL,
    "points" smallint,
    "win" boolean,
    "margin" double precision,
    "score" double precision,
    "votes_given" smallint,
    "votes_possible" smallint,
    "ballot_submission_id" integer NOT NULL,
    "debate_team_id" integer NOT NULL,
    "has_ghost" boolean,
    PRIMARY KEY ("id")
);
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (9, 0, false,  -5.0, 256.0, 0, 1, 4, 27, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (10, 1, true, 5.0, 261.0, 1, 1, 4, 28, true) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (62, 1, true, 7.5, 267.5, 1, 2, 27, 30, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (5, 1, true, 2.0, 260.0, NULL, NULL, 2, 5, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (6, 0, false,  -2.0, 258.0, NULL, NULL, 2, 6, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (7, 0, false,  -3.0, 254.0, NULL, NULL, 3, 5, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (8, 1, true, 3.0, 257.0, NULL, NULL, 3, 6, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (13, 0, false,  -5.0, 278.0, NULL, NULL, 6, 9, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (14, 1, true, 5.0, 283.0, NULL, NULL, 6, 10, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (15, 0, false,  -7.5, 257.5, NULL, NULL, 7, 9, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (16, 1, true, 7.5, 265.0, NULL, NULL, 7, 10, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (17, 0, false,  -4.5, 260.5, NULL, NULL, 8, 9, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (18, 1, true, 4.5, 265.0, NULL, NULL, 8, 10, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (19, 0, false,  -5.0, 260.0, NULL, NULL, 9, 9, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (20, 1, true, 5.0, 265.0, NULL, NULL, 9, 10, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (21, 0, false,  -5.5, 264.0, 0, 4, 10, 9, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (22, 1, true, 5.5, 269.5, 4, 4, 10, 10, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (23, 0, false,  -5.5, 264.0, 0, 4, 11, 9, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (24, 1, true, 5.5, 269.5, 4, 4, 11, 10, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (25, 1, true, 2.0, 263.0, NULL, NULL, 12, 11, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (26, 0, false,  -2.0, 261.0, NULL, NULL, 12, 12, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (27, 1, true, 3.5, 269.5, NULL, NULL, 13, 11, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (28, 0, false,  -3.5, 266.0, NULL, NULL, 13, 12, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (29, 1, true, 2.33333333333333, 265.333333333333, 3, 4, 14, 11, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (30, 0, false,  -2.33333333333333, 263.0, 1, 4, 14, 12, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (31, 1, true, 2.16666666666667, 265.333333333333, 3, 4, 15, 11, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (32, 0, false,  -2.16666666666667, 263.166666666667, 1, 4, 15, 12, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (33, 1, true, 2.0, 267.0, NULL, NULL, 16, 15, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (34, 0, false,  -2.0, 265.0, NULL, NULL, 16, 16, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (35, 1, true, 2.0, 267.0, 1, 1, 17, 15, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (36, 0, false,  -2.0, 265.0, 0, 1, 17, 16, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (37, 0, false,  -2.0, 256.0, NULL, NULL, 18, 17, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (38, 1, true, 2.0, 258.0, NULL, NULL, 18, 18, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (39, 0, false,  -2.5, 256.25, 1, 3, 19, 17, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (40, 1, true, 2.5, 258.75, 2, 3, 19, 18, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (41, 0, false, 0.0, 186.0, NULL, NULL, 20, 19, true) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (42, 1, true, 0.0, 186.0, NULL, NULL, 20, 20, true) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (43, 1, true, 3.0, 192.0, NULL, NULL, 21, 19, true) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (44, 0, false,  -3.0, 189.0, NULL, NULL, 21, 20, true) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (45, 0, false,  -1.0, 185.0, 1, 2, 22, 19, true) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (46, 1, true, 1.0, 186.0, 1, 2, 22, 20, true) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (47, 2, false, NULL, 149.0, NULL, NULL, 23, 21, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (48, 1, false, NULL, 148.0, NULL, NULL, 23, 22, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (49, 0, false, NULL, 145.0, NULL, NULL, 23, 23, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (50, 3, false, NULL, 151.0, NULL, NULL, 23, 24, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (51, 2, false, NULL, 148.0, NULL, NULL, 24, 21, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (52, 1, false, NULL, 147.0, NULL, NULL, 24, 22, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (53, 0, false, NULL, 144.0, NULL, NULL, 24, 23, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (54, 3, false, NULL, 150.0, NULL, NULL, 24, 24, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (55, 1, false, NULL, 149.0, NULL, NULL, 25, 25, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (56, 2, false, NULL, 152.0, NULL, NULL, 25, 26, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (57, 3, false, NULL, 156.0, NULL, NULL, 25, 27, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (58, 0, false, NULL, 147.0, NULL, NULL, 25, 28, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (61, 0, false,  -7.5, 260.0, 1, 2, 27, 29, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (59, 1, true, 0.5, 263.0, NULL, NULL, 26, 29, false) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscore" ("id", "points", "win", "margin", "score", "votes_given", "votes_possible", "ballot_submission_id", "debate_team_id", "has_ghost") VALUES (60, 0, false,  -0.5, 262.5, NULL, NULL, 26, 30, false) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "results_teamscorebyadj" (
    "id" integer NOT NULL,
    "win" boolean,
    "margin" double precision,
    "score" double precision,
    "ballot_submission_id" integer NOT NULL,
    "debate_adjudicator_id" integer NOT NULL,
    "debate_team_id" integer NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (12, true, NULL, 265.0, 10, 8, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (13, false, NULL, 260.0, 10, 12, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (14, true, NULL, 265.0, 10, 12, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (15, false, NULL, 257.5, 11, 10, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (16, true, NULL, 265.0, 11, 10, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (17, false, NULL, 278.0, 11, 7, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (18, true, NULL, 283.0, 11, 7, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (19, false, NULL, 260.5, 11, 8, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (20, true, NULL, 265.0, 11, 8, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (21, false, NULL, 260.0, 11, 12, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (22, true, NULL, 265.0, 11, 12, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (23, true, NULL, 263.0, 14, 13, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (24, false, NULL, 261.0, 14, 13, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (25, true, NULL, 263.5, 14, 14, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (26, false, NULL, 262.0, 14, 14, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (27, false, NULL, 254.0, 14, 15, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (28, true, NULL, 257.0, 14, 15, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (29, true, NULL, 269.5, 14, 16, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (30, false, NULL, 266.0, 14, 16, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (31, true, NULL, 263.0, 15, 13, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (32, false, NULL, 261.0, 15, 13, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (33, true, NULL, 263.5, 15, 14, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (34, false, NULL, 262.5, 15, 14, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (35, false, NULL, 254.0, 15, 15, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (36, true, NULL, 257.0, 15, 15, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (37, true, NULL, 269.5, 15, 16, 11) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (38, false, NULL, 266.0, 15, 16, 12) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (39, true, NULL, 267.0, 17, 18, 15) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (40, false, NULL, 265.0, 17, 18, 16) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (41, false, NULL, 256.0, 19, 19, 17) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (42, true, NULL, 258.0, 19, 19, 18) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (43, false, NULL, 256.5, 19, 22, 17) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (44, true, NULL, 259.5, 19, 22, 18) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (45, true, NULL, 260.5, 19, 23, 17) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (46, false, NULL, 259.0, 19, 23, 18) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (47, false, NULL, 260.0, 22, 24, 19) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (48, true, NULL, 261.0, 22, 24, 20) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (49, true, NULL, 269.0, 22, 25, 19) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (50, false, NULL, 264.0, 22, 25, 20) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (51, false, NULL, 260.0, 27, 30, 29) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (52, true, NULL, 267.5, 27, 30, 30) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (53, true, NULL, 263.0, 27, 31, 29) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (54, false, NULL, 262.5, 27, 31, 30) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (5, false, NULL, 256.0, 4, 11, 27) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (6, true, NULL, 261.0, 4, 11, 28) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (1, false, NULL, 254.0, 4, 2, 5) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (2, true, NULL, 257.0, 4, 2, 6) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (3, true, NULL, 260.0, 4, 3, 5) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (4, false, NULL, 258.0, 4, 3, 6) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (7, false, NULL, 257.5, 10, 10, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (8, true, NULL, 265.0, 10, 10, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (9, false, NULL, 278.0, 10, 7, 9) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (10, true, NULL, 283.0, 10, 7, 10) ON CONFLICT DO NOTHING;
INSERT INTO "results_teamscorebyadj" ("id", "win", "margin", "score", "ballot_submission_id", "debate_adjudicator_id", "debate_team_id") VALUES (11, false, NULL, 260.5, 10, 8, 9) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "tournaments_round" (
    "id" integer NOT NULL,
    "seq" integer NOT NULL,
    "name" VARCHAR(40) NOT NULL,
    "abbreviation" VARCHAR(10) NOT NULL,
    "stage" VARCHAR(1) NOT NULL,
    "draw_type" VARCHAR(1) NOT NULL,
    "draw_status" VARCHAR(1) NOT NULL,
    "feedback_weight" double precision NOT NULL,
    "silent" boolean NOT NULL,
    "break_category_id" integer,
    "tournament_id" integer NOT NULL,
    "completed" boolean NOT NULL,
    "weight" integer NOT NULL,
    "starts_at" timestamp with time zone,
    "motions_status" VARCHAR(1) NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (1, 1, 'Round 1', 'R1', 'P', 'R', 'R', 0.0, false, NULL, 1, true, 1, '2026-05-28T16:47:11.077515+00:00'::timestamptz, 'M') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (3, 3, 'Round 3', 'R3', 'P', 'P', 'C', 0.2, false, NULL, 1, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (2, 2, 'Round 2', 'R2', 'P', 'P', 'N', 0.1, false, NULL, 1, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (26, 6, 'Round 6', 'R6', 'P', 'P', 'C', 0.5, true, NULL, 2, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (24, 4, 'Round 4', 'R4', 'P', 'P', 'R', 0.3, false, NULL, 2, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (21, 1, 'Round 1', 'R1', 'P', 'R', 'N', 0.0, false, NULL, 2, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (22, 2, 'Round 2', 'R2', 'P', 'P', 'N', 0.1, false, NULL, 2, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (4, 4, 'Round 4', 'R4', 'P', 'P', 'N', 0.3, false, NULL, 1, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (5, 5, 'Round 5', 'R5', 'P', 'P', 'N', 0.4, false, NULL, 1, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (6, 6, 'Round 6', 'R6', 'P', 'P', 'N', 0.5, false, NULL, 1, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (7, 7, 'Round 7', 'R7', 'P', 'P', 'N', 0.5, false, NULL, 1, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (8, 8, 'Round 8', 'R8', 'P', 'P', 'N', 0.5, false, NULL, 1, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (9, 9, 'Round 9', 'R9', 'P', 'P', 'N', 0.5, false, NULL, 1, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (10, 10, 'Round 10', 'R10', 'P', 'P', 'N', 0.5, false, NULL, 1, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (11, 11, 'Round 11', 'R11', 'P', 'P', 'N', 0.5, false, NULL, 1, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (12, 12, 'Round 12', 'R12', 'P', 'P', 'N', 0.5, false, NULL, 1, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (13, 13, 'Round 13', 'R13', 'P', 'P', 'N', 0.5, false, NULL, 1, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (14, 14, 'Round 14', 'R14', 'P', 'P', 'N', 0.5, true, NULL, 1, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (15, 15, 'Round 15', 'R15', 'P', 'P', 'N', 0.5, true, NULL, 1, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (16, 16, 'Round 16', 'R16', 'P', 'P', 'N', 0.5, true, NULL, 1, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (17, 17, 'Round 17', 'R17', 'P', 'P', 'N', 0.5, true, NULL, 1, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (18, 18, 'Round 18', 'R18', 'P', 'P', 'N', 0.5, true, NULL, 1, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (19, 19, 'Round 19', 'R19', 'P', 'P', 'N', 0.5, true, NULL, 1, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (20, 20, 'Round 20', 'R20', 'P', 'P', 'N', 0.5, true, NULL, 1, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (23, 3, 'Round 3', 'R3', 'P', 'P', 'N', 0.2, false, NULL, 2, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (25, 5, 'Round 5', 'R5', 'P', 'P', 'N', 0.4, false, NULL, 2, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (27, 7, 'Round 7', 'R7', 'P', 'P', 'N', 0.5, true, NULL, 2, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (28, 8, 'Round 8', 'R8', 'P', 'P', 'N', 0.5, true, NULL, 2, false, 1, NULL, 'N') ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_round" ("id", "seq", "name", "abbreviation", "stage", "draw_type", "draw_status", "feedback_weight", "silent", "break_category_id", "tournament_id", "completed", "weight", "starts_at", "motions_status") VALUES (29, 1, 'Round 1', 'R1', 'P', 'R', 'R', 0.0, false, NULL, 1, true, 1, NULL, 'M') ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "tournaments_scheduleevent" (
    "id" integer NOT NULL,
    "title" VARCHAR(100) NOT NULL,
    "type" VARCHAR(1) NOT NULL,
    "start_time" timestamp with time zone NOT NULL,
    "end_time" timestamp with time zone,
    "round_id" integer,
    "tournament_id" integer NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "tournaments_tournament" (
    "id" integer NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "short_name" VARCHAR(25) NOT NULL,
    "seq" integer,
    "slug" VARCHAR(50) NOT NULL,
    "active" boolean NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "tournaments_tournament" ("id", "name", "short_name", "seq", "slug", "active") VALUES (1, 'APD June 26', 'apd june', NULL, 'apdjune26', true) ON CONFLICT DO NOTHING;
INSERT INTO "tournaments_tournament" ("id", "name", "short_name", "seq", "slug", "active") VALUES (2, 'BPD June 2026', 'bpd june', NULL, 'bpdjune26', true) ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "users_membership" (
    "id" integer NOT NULL,
    "group_id" integer NOT NULL,
    "user_id" integer NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "users_userpermission" (
    "id" integer NOT NULL,
    "permission" VARCHAR(50) NOT NULL,
    "tournament_id" integer NOT NULL,
    "user_id" integer NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "venues_venue" (
    "id" integer NOT NULL,
    "name" VARCHAR(40) NOT NULL,
    "priority" integer NOT NULL,
    "tournament_id" integer,
    "url" VARCHAR(200) NOT NULL,
    PRIMARY KEY ("id")
);
INSERT INTO "venues_venue" ("id", "name", "priority", "tournament_id", "url") VALUES (1, 'Room 1', 200, 1, '') ON CONFLICT DO NOTHING;
INSERT INTO "venues_venue" ("id", "name", "priority", "tournament_id", "url") VALUES (2, 'Room 2', 100, 1, '') ON CONFLICT DO NOTHING;
INSERT INTO "venues_venue" ("id", "name", "priority", "tournament_id", "url") VALUES (3, 'Room 1', 200, 2, '') ON CONFLICT DO NOTHING;
INSERT INTO "venues_venue" ("id", "name", "priority", "tournament_id", "url") VALUES (4, 'Room 2', 100, 2, '') ON CONFLICT DO NOTHING;

CREATE TABLE IF NOT EXISTS "venues_venuecategory" (
    "id" integer NOT NULL,
    "name" VARCHAR(80) NOT NULL,
    "description" VARCHAR(200) NOT NULL,
    "display_in_venue_name" VARCHAR(1) NOT NULL,
    "display_in_public_tooltip" boolean NOT NULL,
    "tournament_id" integer,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "venues_venuecategory_venues" (
    "id" integer NOT NULL,
    "venuecategory_id" integer NOT NULL,
    "venue_id" integer NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "venues_venueconstraint" (
    "id" integer NOT NULL,
    "priority" integer NOT NULL,
    "subject_id" integer NOT NULL,
    "category_id" integer NOT NULL,
    "subject_content_type_id" integer NOT NULL,
    PRIMARY KEY ("id")
);

COMMIT;
