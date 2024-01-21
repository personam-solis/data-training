#!/bin/bash

set -e

if [[ ! -e /imdb_dump ]]; then
    # Download the database dump from Harvard
    echo "DOWNLOADING DB..."

    cd /

    wget -P / -v --show-progress --no-check-certificate -O imdb_dump \
        https://dataverse.harvard.edu/api/access/datafile/:persistentId?persistentId=doi:10.7910/DVN/2QYZBT/TGYUNU

    chmod -fv 777 /imdb_dump
fi
