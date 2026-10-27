"""Refresh the server-side name allowlist from the existing society Sheet. No deletes."""
import csv
import io
import os
import re
import urllib.request

URL = 'https://docs.google.com/spreadsheets/d/1niJnThDu6Y1vNxQBRQ3b2inEdQKU-7ZHxSD0PyR8bTA/export?format=csv&gid=0'

def parse_roster(text):
    result = []
    seen = set()
    for row in csv.DictReader(io.StringIO(text.lstrip('\ufeff'))):
        name = row.get('Name', '').strip()
        if not name:
            continue
        key = re.sub(r'\s+', ' ', name.replace('\u00a0', ' ')).strip().lower()
        raw = row.get('Year', '').strip().lower()
        match = re.fullmatch(r'(?:year\s*)?([1-9])(?:st|nd|rd|th)?(?:\s*year)?', raw)
        year = match[1] if match else 'Alum' if raw in ('alum','alums','alumni','alumnus','alumna') else None
        if not year or key in seen:
            raise ValueError('Invalid or duplicate society roster row')
        seen.add(key)
        graduation_year = row.get('Graduation Year', '').strip()
        if graduation_year and not re.fullmatch(r'\d{4}', graduation_year):
            raise ValueError('Graduation year must contain four digits')
        result.append((key, name, year, graduation_year))
    if not result:
        raise ValueError('Empty society roster; refusing replacement')
    return result

def main():
    import psycopg2
    with urllib.request.urlopen(URL, timeout=40) as response:
        rows = parse_roster(response.read().decode('utf-8-sig'))
    with psycopg2.connect(os.environ['DEST_DB_URL']) as connection:
        with connection.cursor() as cursor:
            cursor.execute("SELECT pg_advisory_xact_lock(hashtext('dk-cross-roster-sync'))")
            cursor.execute("SELECT to_regclass('public.dk_cross_roster')")
            if cursor.fetchone()[0] is None:
                print('Shared cross-mock schema not installed; roster sync skipped.')
                return
            cursor.execute('UPDATE public.dk_cross_roster SET active=false')
            cursor.executemany('''INSERT INTO public.dk_cross_roster(member_key,member_name,year,graduation_year,active)
              VALUES(%s,%s,%s,%s,true) ON CONFLICT(member_key) DO UPDATE SET
              member_name=excluded.member_name,year=excluded.year,graduation_year=excluded.graduation_year,active=true''', rows)
    print(f'Validated and synced {len(rows)} society names. No history deleted.')

if __name__ == '__main__':
    main()
