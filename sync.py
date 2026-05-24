import os
import logging
import psycopg2
from psycopg2.extras import execute_values

logging.basicConfig(level=logging.INFO, format='%(asctime)s %(levelname)s %(message)s')
log = logging.getLogger(__name__)

SOURCE_URL = os.environ['SOURCE_DB_URL']
DEST_URL = os.environ['DEST_DB_URL']

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


def col_type_sql(col):
    _, data_type, char_max, _, _, udt_name = col
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


def sync_table(src_conn, dest_conn, table):
    columns = get_columns(src_conn, table)
    pks = get_primary_keys(src_conn, table)
    col_names = [col[0] for col in columns]

    ensure_table(dest_conn, table, columns, pks)

    with src_conn.cursor() as cur:
        cur.execute(f'SELECT * FROM "{table}"')
        rows = cur.fetchall()

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
    src = psycopg2.connect(SOURCE_URL)
    dest = psycopg2.connect(DEST_URL)

    tables = [t for t in get_tables(src) if t not in SKIP_TABLES]
    log.info(f'Tables to sync: {len(tables)}')

    failed = []
    for table in tables:
        try:
            log.info(f'Syncing {table}...')
            sync_table(src, dest, table)
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
