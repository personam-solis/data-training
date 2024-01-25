#!/bin/bash

ls -lAh /var/lib/postgresql/imdb_dump

echo "Importing the database"

pg_restore -v --exit-on-error \
	--jobs 4\
	--username "$POSTGRES_USER" \
	--dbname "imdbdata"
	/var/lib/postgresql/imdb_dump