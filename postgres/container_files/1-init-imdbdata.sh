#!/bin/bash

set -e

cd /

# Download the database dump from Harvard
wget -O imdb_dump \
	https://dataverse.harvard.edu/api/access/datafile/:persistentId?persistentId=doi:10.7910/DVN/2QYZBT/TGYUNU


pg_restore -v --exit-on-error \
	--clean \
	--create \
	--jobs 4\
	--username "$POSTGRES_USER" \
	--dbname "$POSTGRES_DB"