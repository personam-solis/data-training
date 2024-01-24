#!/bin/bash

echo "Importing the database"

pg_restore -v --exit-on-error \
	--create \
	--jobs 4\
	--username "$POSTGRES_USER" \
	--dbname "$POSTGRES_DB" \
	/var/lib/postgresql/data/imdb_dump