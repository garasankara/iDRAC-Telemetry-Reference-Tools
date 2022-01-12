#!/bin/bash
sleep 10
psql --username "$POSTGRES_USER" <<EOF
CREATE DATABASE $TIMESCALE_DB WITH OWNER $POSTGRES_USER;
GRANT ALL PRIVILEGES ON DATABASE $TIMESCALE_DB TO $POSTGRES_USER;
EOF
