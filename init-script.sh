#!/bin/bash
set -e

POSTGRES="psql --username ${POSTGRES_USER} -v ON_ERROR_STOP=1"

$POSTGRES --dbname "$POSTGRES_DB" <<-EOSQL
   CREATE DATABASE prueba;
EOSQL

# docker build -t postgres:prueba-12 ./
# docker run --name prueba -e POSTGRES_USER=prueba -e  POSTGRES_PASSWORD=123456789 -p 2324:5432 -itd postgres:prueba-12 
# docker start prueba