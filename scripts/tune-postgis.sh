#!/bin/sh

set -e
export PGUSER="$POSTGRES_USER"

"${psql[@]}" -c "ALTER SYSTEM SET work_mem='${PG_WORK_MEM:-16MB}';"
"${psql[@]}" -c "ALTER SYSTEM SET maintenance_work_mem='${PG_MAINTENANCE_WORK_MEM:-256MB}';"
"${psql[@]}" -c "ALTER SYSTEM SET max_wal_size='${PG_MAX_WAL_SIZE:-2GB}';"
