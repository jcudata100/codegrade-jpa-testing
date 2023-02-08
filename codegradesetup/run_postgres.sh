#!/bin/sh

# Quit if any command returns an error code (!= 0)
set -e

# Wait untill postgres is ready to accept connections.
while ! pg_isready &> /dev/null; do
    sleep 5s
done
