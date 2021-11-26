#!/bin/bash
# -- Steps if postgres is not installed --
# CREATE ROLE postgres superuser;
# CREATE USER postgres; 
# ALTER ROLE postgres WITH LOGIN;



psql -c "CREATE DATABASE pact_broker;" -U postgres
psql -U postgres -d pact_broker -c "CREATE ROLE pact_broker WITH LOGIN PASSWORD 'CHANGE_ME';"
psql -U postgres -d pact_broker -c "GRANT ALL PRIVILEGES ON DATABASE pact_broker TO pact_broker;"
