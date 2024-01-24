#!/bin/bash

set -e

if [[ ! -e /var/lib/postgresql/data/imdb_dump ]]; then
    # Download the database dump from Harvard
    echo "DOWNLOADING DB..."

    cd /var/lib/postgresql/data

    wget -P /var/lib/postgresql/data/ -v --show-progress --no-check-certificate -O imdb_dump \
        https://dataverse.harvard.edu/api/access/datafile/:persistentId?persistentId=doi:10.7910/DVN/2QYZBT/TGYUNU

    chmod -fv 777 /var/lib/postgresql/data/imdb_dump

    ls -lAh /var/lib/postgresql/data/imdb_dump
fi
