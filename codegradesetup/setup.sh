#!/usr/bin/env bash

set -e

sudo apt update
sudo apt install postgresql

cat <<EOF | sudo -u postgres psql
ALTER USER postgres WITH PASSWORD 'postgres';
CREATE DATABASE jpalab_db;
GRANT ALL PRIVILEGES ON DATABASE jpalab_db TO postgres;
EOF
