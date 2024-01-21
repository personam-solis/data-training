#!/bin/bash

echo "Importing the database"

pg_restore -v --exit-on-error \
	--clean \
	--create \
	--jobs 4\
	--username "$POSTGRES_USER" \
	--dbname "$POSTGRES_DB" \
	imdb_dump