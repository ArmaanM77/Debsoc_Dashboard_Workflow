import argparse
import os
from pathlib import Path
from urllib.parse import parse_qsl, urlencode, urlsplit, urlunsplit

import psycopg2


PRESERVE_TABLES = {'dashboard_settings'}


def with_default_sslmode(db_url):
    parts = urlsplit(db_url)
    query = dict(parse_qsl(parts.query, keep_blank_values=True))
    query.setdefault('sslmode', 'require')
    return urlunsplit((parts.scheme, parts.netloc, parts.path, urlencode(query), parts.fragment))


def quote_ident(name):
    return '"' + name.replace('"', '""') + '"'


def get_tables(conn):
    with conn.cursor() as cur:
        cur.execute("""
            SELECT table_name
            FROM information_schema.tables
            WHERE table_schema = 'public'
              AND table_type = 'BASE TABLE'
            ORDER BY table_name
        """)
        return [row[0] for row in cur.fetchall()]


def get_columns(conn, table):
    with conn.cursor() as cur:
        cur.execute("""
            SELECT column_name, data_type, character_maximum_length,
                   is_nullable, column_default, udt_name
            FROM information_schema.columns
            WHERE table_schema = 'public'
              AND table_name = %s
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


def dump_snapshot(conn, path):
    tables = get_tables(conn)
    with path.open('w', encoding='utf-8') as fh:
        fh.write('-- Supabase public schema/data backup before repair\n')
        fh.write('BEGIN;\nSET search_path = public;\n\n')
        for table in tables:
            columns = get_columns(conn, table)
            pks = get_primary_keys(conn, table)
            defs = []
            for col in columns:
                name, _, _, nullable, _, _ = col
                null_part = '' if nullable == 'YES' else ' NOT NULL'
                defs.append(f'    {quote_ident(name)} {col_type_sql(col)}{null_part}')
            if pks:
                defs.append('    PRIMARY KEY (' + ', '.join(quote_ident(pk) for pk in pks) + ')')
            fh.write(f'CREATE TABLE IF NOT EXISTS {quote_ident(table)} (\n')
            fh.write(',\n'.join(defs))
            fh.write('\n);\n')

            col_names = [col[0] for col in columns]
            col_sql = ', '.join(quote_ident(col) for col in col_names)
            with conn.cursor() as cur:
                cur.execute(f'SELECT {col_sql} FROM {quote_ident(table)}')
                for row in cur.fetchall():
                    values = b', '.join(cur.mogrify('%s', (value,)) for value in row).decode('utf-8')
                    fh.write(f'INSERT INTO {quote_ident(table)} ({col_sql}) VALUES ({values}) ON CONFLICT DO NOTHING;\n')
            fh.write('\n')
        fh.write('COMMIT;\n')


def restore_backup(conn, backup_path):
    tables = [table for table in get_tables(conn) if table not in PRESERVE_TABLES]
    with conn.cursor() as cur:
        for table in tables:
            cur.execute(f'DROP TABLE IF EXISTS {quote_ident(table)} CASCADE')
    conn.commit()

    sql = backup_path.read_text(encoding='utf-8')
    with conn.cursor() as cur:
        cur.execute(sql)
    conn.commit()


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--backup', required=True)
    parser.add_argument('--snapshot', required=True)
    args = parser.parse_args()

    db_url = os.environ['DEST_DB_URL']
    backup_path = Path(args.backup)
    snapshot_path = Path(args.snapshot)
    snapshot_path.parent.mkdir(parents=True, exist_ok=True)

    conn = psycopg2.connect(with_default_sslmode(db_url), connect_timeout=20)
    try:
        dump_snapshot(conn, snapshot_path)
        restore_backup(conn, backup_path)
    finally:
        conn.close()


if __name__ == '__main__':
    main()
