import os
import logging
import time
import hashlib
import json
from urllib.parse import parse_qsl, urlencode, urlsplit, urlunsplit
import psycopg2
from psycopg2.extras import execute_values

logging.basicConfig(level=logging.INFO, format='%(asctime)s %(levelname)s %(message)s')
log = logging.getLogger(__name__)

SOURCE_URL = os.environ['SOURCE_DB_URL']
DEST_URL = os.environ['DEST_DB_URL']
CONNECT_RETRIES = 4
CONNECT_RETRY_DELAY_SECONDS = 8
SOURCE_ID_BLOCK = 1_000_000

ID_COLUMN_NAMES = {'id', 'person_ptr_id', 'object_id'}

# Django internal tables we don't need to sync
SKIP_TABLES = {
    'django_migrations',
    'django_session',
    'django_content_type',
    'auth_permission',
    'auth_group',
    'auth_group_permissions',
    'auth_user_groups',
    'auth_user_user_permissions',
}


def with_default_sslmode(db_url):
    parts = urlsplit(db_url)
    query = dict(parse_qsl(parts.query, keep_blank_values=True))
    query.setdefault('sslmode', 'require')
    return urlunsplit((parts.scheme, parts.netloc, parts.path, urlencode(query), parts.fragment))


def connect_with_retry(label, db_url):
    url = with_default_sslmode(db_url)
    for attempt in range(1, CONNECT_RETRIES + 1):
        try:
            log.info(f'Connecting to {label} database (attempt {attempt}/{CONNECT_RETRIES})...')
            return psycopg2.connect(url, connect_timeout=15)
        except psycopg2.OperationalError:
            if attempt == CONNECT_RETRIES:
                raise
            log.warning(f'{label} connection failed; retrying in {CONNECT_RETRY_DELAY_SECONDS}s...')
            time.sleep(CONNECT_RETRY_DELAY_SECONDS)


def get_tables(conn):
    with conn.cursor() as cur:
        cur.execute("""
            SELECT table_name FROM information_schema.tables
            WHERE table_schema = 'public' AND table_type = 'BASE TABLE'
            ORDER BY table_name
        """)
        return [row[0] for row in cur.fetchall()]


def get_columns(conn, table):
    with conn.cursor() as cur:
        cur.execute("""
            SELECT column_name, data_type, character_maximum_length,
                   is_nullable, column_default, udt_name
            FROM information_schema.columns
            WHERE table_schema = 'public' AND table_name = %s
            ORDER BY ordinal_position
        """, (table,))
        return cur.fetchall()


def get_primary_keys(conn, table):
    with conn.cursor() as cur:
        cur.execute("""
            SELECT kcu.column_name
            FROM information_schema.table_constraints tc
            JOIN information_schema.key_column_usage kcu
                ON tc.constraint_name = kcu.constraint_name
                AND tc.table_schema = kcu.table_schema
            WHERE tc.constraint_type = 'PRIMARY KEY'
                AND tc.table_schema = 'public'
                AND tc.table_name = %s
            ORDER BY kcu.ordinal_position
        """, (table,))
        return [row[0] for row in cur.fetchall()]


def is_integer_type(col):
    _, data_type, _, _, _, udt_name = col
    return data_type in {'integer', 'bigint', 'smallint'} or udt_name in {'int2', 'int4', 'int8'}


def is_id_like_column(name):
    return name in ID_COLUMN_NAMES or name.endswith('_id')


def get_source_fingerprint(src_conn):
    with src_conn.cursor() as cur:
        cur.execute("""
            SELECT id, name, slug
            FROM tournaments_tournament
            ORDER BY id
        """)
        tournaments = cur.fetchall()

    payload = json.dumps(tournaments, default=str, separators=(',', ':'))
    return hashlib.sha256(payload.encode('utf-8')).hexdigest()


def ensure_sync_sources_table(dest_conn):
    with dest_conn.cursor() as cur:
        cur.execute("""
            CREATE TABLE IF NOT EXISTS dashboard_sync_sources (
                fingerprint TEXT PRIMARY KEY,
                id_offset INTEGER NOT NULL,
                first_seen_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                last_seen_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
            )
        """)
    dest_conn.commit()


def has_existing_dashboard_data(dest_conn):
    with dest_conn.cursor() as cur:
        cur.execute("""
            SELECT EXISTS (
                SELECT 1
                FROM information_schema.tables
                WHERE table_schema = 'public'
                  AND table_name = 'tournaments_tournament'
            )
        """)
        if not cur.fetchone()[0]:
            return False

        cur.execute('SELECT EXISTS (SELECT 1 FROM tournaments_tournament LIMIT 1)')
        return bool(cur.fetchone()[0])


def get_source_offset(src_conn, dest_conn):
    fingerprint = get_source_fingerprint(src_conn)
    has_legacy_data = has_existing_dashboard_data(dest_conn)
    ensure_sync_sources_table(dest_conn)

    with dest_conn.cursor() as cur:
        cur.execute(
            """
            SELECT id_offset
            FROM dashboard_sync_sources
            WHERE fingerprint = %s
            """,
            (fingerprint,)
        )
        existing = cur.fetchone()
        if existing:
            cur.execute(
                """
                UPDATE dashboard_sync_sources
                SET last_seen_at = NOW()
                WHERE fingerprint = %s
                """,
                (fingerprint,)
            )
            dest_conn.commit()
            return int(existing[0])

        cur.execute('SELECT COALESCE(MAX(id_offset), -1000000) FROM dashboard_sync_sources')
        max_offset = int(cur.fetchone()[0])
        offset = SOURCE_ID_BLOCK if max_offset < 0 and has_legacy_data else max(0, max_offset + SOURCE_ID_BLOCK)
        cur.execute(
            """
            INSERT INTO dashboard_sync_sources (fingerprint, id_offset)
            VALUES (%s, %s)
            """,
            (fingerprint, offset)
        )
    dest_conn.commit()
    log.info(f'Registered new source fingerprint with ID offset {offset}')
    return offset


def col_type_sql(col):
    _, data_type, char_max, _, _, udt_name = col
    if data_type == 'ARRAY':
        array_type_map = {
            '_int2': 'SMALLINT[]',
            '_int4': 'INTEGER[]',
            '_int8': 'BIGINT[]',
            '_float4': 'REAL[]',
            '_float8': 'DOUBLE PRECISION[]',
            '_bool': 'BOOLEAN[]',
            '_text': 'TEXT[]',
            '_varchar': 'TEXT[]',
        }
        return array_type_map.get(udt_name, 'TEXT[]')
    if data_type == 'USER-DEFINED':
        return udt_name
    if data_type == 'character varying':
        return f'VARCHAR({char_max})' if char_max else 'TEXT'
    if data_type == 'character':
        return f'CHAR({char_max})' if char_max else 'CHAR'
    return data_type


def ensure_table(dest_conn, table, columns, pks):
    col_defs = []
    for col in columns:
        name, _, _, nullable, _, _ = col
        type_str = col_type_sql(col)
        null_part = '' if nullable == 'YES' else ' NOT NULL'
        col_defs.append(f'    "{name}" {type_str}{null_part}')

    if pks:
        pk_str = ', '.join(f'"{pk}"' for pk in pks)
        col_defs.append(f'    PRIMARY KEY ({pk_str})')

    ddl = f'CREATE TABLE IF NOT EXISTS "{table}" (\n' + ',\n'.join(col_defs) + '\n)'
    with dest_conn.cursor() as cur:
        cur.execute(ddl)
    dest_conn.commit()


def transform_rows(rows, columns, source_offset):
    if source_offset == 0 or not rows:
        return rows

    id_indexes = [
        idx for idx, col in enumerate(columns)
        if is_id_like_column(col[0]) and is_integer_type(col)
    ]
    if not id_indexes:
        return rows

    transformed = []
    for row in rows:
        row_list = list(row)
        for idx in id_indexes:
            value = row_list[idx]
            if value is not None:
                row_list[idx] = int(value) + source_offset
        transformed.append(tuple(row_list))
    return transformed


def sync_table(src_conn, dest_conn, table, source_offset):
    columns = get_columns(src_conn, table)
    pks = get_primary_keys(src_conn, table)
    col_names = [col[0] for col in columns]

    ensure_table(dest_conn, table, columns, pks)

    with src_conn.cursor() as cur:
        cur.execute(f'SELECT * FROM "{table}"')
        rows = cur.fetchall()

    rows = transform_rows(rows, columns, source_offset)

    with dest_conn.cursor() as cur:
        if rows:
            cols_quoted = ', '.join(f'"{c}"' for c in col_names)
            if pks:
                # Upsert: preserve historical data across DB switches.
                # Rows removed from source stay in Supabase (intentional — old tournament history kept).
                update_cols = [c for c in col_names if c not in pks]
                if update_cols:
                    set_clause = ', '.join(f'"{c}" = EXCLUDED."{c}"' for c in update_cols)
                    conflict_clause = f'ON CONFLICT ({", ".join(f"{pk}" for pk in pks)}) DO UPDATE SET {set_clause}'
                else:
                    conflict_clause = f'ON CONFLICT ({", ".join(f"{pk}" for pk in pks)}) DO NOTHING'
                execute_values(
                    cur,
                    f'INSERT INTO "{table}" ({cols_quoted}) VALUES %s {conflict_clause}',
                    rows
                )
            else:
                # No PK: truncate + reinsert (can't upsert without a key)
                cur.execute(f'TRUNCATE TABLE "{table}"')
                execute_values(
                    cur,
                    f'INSERT INTO "{table}" ({cols_quoted}) VALUES %s',
                    rows
                )
    dest_conn.commit()
    log.info(f'  {table}: {len(rows)} rows')


def main():
    log.info('Connecting...')
    src = connect_with_retry('source', SOURCE_URL)
    dest = connect_with_retry('destination', DEST_URL)
    source_offset = get_source_offset(src, dest)
    log.info(f'Using source ID offset: {source_offset}')

    tables = [t for t in get_tables(src) if t not in SKIP_TABLES]
    log.info(f'Tables to sync: {len(tables)}')

    failed = []
    for table in tables:
        try:
            log.info(f'Syncing {table}...')
            sync_table(src, dest, table, source_offset)
        except Exception as e:
            log.error(f'FAILED {table}: {e}')
            dest.rollback()
            failed.append(table)

    src.close()
    dest.close()

    if failed:
        log.warning(f'Failed tables: {failed}')
    else:
        log.info('Sync complete — all tables OK.')


if __name__ == '__main__':
    main()
