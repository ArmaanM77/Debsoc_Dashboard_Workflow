# DebSoc data continuity automation

This repository keeps the short-lived Render Tabbycat database mirrored into
the persistent Supabase dashboard database. It also contains the guarded
rotation workflow for Render's free PostgreSQL lifetime.

## Safety model

The automation never deletes or truncates the Supabase database. A Render
rotation is allowed only after all of these gates pass:

1. The exact Render service and database names resolve to one resource in the
   same workspace.
2. The database is confirmed to use the `free` plan.
3. A final Render-to-Supabase sync completes with zero failed tables.
4. A fresh full Supabase dump is created, encrypted, decrypted, checksummed,
   and checked by `pg_restore`.
5. The rotation command receives the workflow-only safety token.

The website service is not deleted. Its URL, SMTP settings, Django secret,
Redis instance, and other Render environment values therefore remain intact.

## Workflows

- **Sync Render → Supabase** runs every two hours and can be dispatched
  manually. When `RENDER_API_KEY` exists, it discovers the current Render
  Postgres connection rather than relying on the old `SOURCE_DB_URL` secret.
- **Backup Supabase** runs daily at 01:30 UTC. It retains 90 days of encrypted
  PostgreSQL dumps in GitHub Actions artifacts.
- **Guarded Render Rotation** checks daily at 02:15 UTC and rotates at 25 days,
  leaving a buffer before Render's free-database deadline. It is inert until
  the repository variable `RENDER_AUTOMATION_ENABLED` is exactly `true`.

## Required GitHub settings

Repository secrets:

- `DEST_DB_URL`: Supabase PostgreSQL connection string.
- `SUPABASE_BACKUP_PASSPHRASE`: encryption passphrase for backup artifacts.
- `RENDER_API_KEY`: Render account API key. It is never written to logs or the
  repository.

Repository variable:

- `RENDER_AUTOMATION_ENABLED`: keep `false` during setup and set to `true` only
  after the adoption dry run succeeds.
- `RENDER_DATABASE_NAME`, `RENDER_SERVICE_NAME`, and `RENDER_OWNER_ID`: exact
  identifiers discovered from the existing Blueprint. Exact matching is a
  deletion safety boundary.
- `RENDER_REGION` and `RENDER_POSTGRES_VERSION`: configuration reused when the
  free database is recreated.

`SOURCE_DB_URL` remains a temporary fallback and can be removed after Render
discovery is verified.

Keep an offline/password-manager copy of the backup passphrase. Without it,
the encrypted database dumps cannot be restored.

## One-time activation

1. Add `RENDER_API_KEY` as a GitHub Actions secret.
2. Run **Guarded Render Rotation** with mode `check`. Confirm the output names
   exactly one `tabbycat_website` service and one `tabbycat_database` database.
3. Run it with mode `adopt`. This disables push-based Render deployments and
   marks the current database as the managed starting point; it does not delete
   or redeploy anything.
4. Set `RENDER_AUTOMATION_ENABLED=true`.
5. Manually dispatch **Sync Render → Supabase** and confirm success.

Mode `rotate` is an emergency/manual forced rotation. The normal daily schedule
rotates only when the age threshold or an interrupted rotation requires it.

## Recovery

If a run stops after deleting the old Render database, the next daily run sees
the `rotating` state and recreates it. If provisioning succeeded but deployment
did not, the next run resumes the provisioned database instead of deleting it.
Supabase and its encrypted backup remain untouched in both cases.
