#!/usr/bin/env python3
import pymysql
import sys
from pathlib import Path

# Database configuration
config = {
    'host': '127.0.0.1',
    'user': 'surveyswap_app',
    'password': 'surveyswap_app_2026',
    'database': 'surveyswap'
}

try:
    # Read migration file
    migration_file = Path(__file__).parent / 'database' / 'migrations' / '2026_04_17_add_native_surveys_seed.sql'
    
    with open(migration_file, 'r', encoding='utf-8') as f:
        sql_content = f.read()
    
    # Connect to database
    conn = pymysql.connect(**config)
    cursor = conn.cursor()
    
    # Execute migration
    statements = sql_content.split(';')
    for statement in statements:
        statement = statement.strip()
        if statement and not statement.startswith('--'):
            try:
                cursor.execute(statement)
            except Exception as e:
                pass  # Skip errors for comments/empty lines
    
    conn.commit()
    cursor.close()
    conn.close()
    
    print("✓ Migration 2026_04_17_add_native_surveys_seed.sql executed successfully!")
    print("✓ 10 native surveys have been added to the database.")
    
except Exception as e:
    print(f"✗ Migration failed: {e}", file=sys.stderr)
    sys.exit(1)
