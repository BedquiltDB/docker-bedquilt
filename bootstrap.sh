#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 -d template1 --username "$POSTGRES_USER" <<EOF
    CREATE EXTENSION pgcrypto;
    CREATE EXTENSION plpython3u;
    CREATE EXTENSION bedquilt;
EOF


psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER docker;
    CREATE DATABASE docker;
    GRANT ALL PRIVILEGES ON DATABASE docker TO docker;
EOSQL
