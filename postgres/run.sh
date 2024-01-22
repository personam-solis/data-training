#!/bin/bash

# default data dir: /var/lib/postgresql/data
# Create volume if it does not exist
if ! docker volume inspect imdb; then
    echo "The docker volume 'imdb' does not exist... creating now"
    docker volume create imdb
fi

docker run -d \
    -p 5400:5432  \
    --cpus 4 \
    --health-timeout 30s \
    --memory 16g \
    --mount source=imdb,target=/var/lib/postgresql/data \
    --name imdb \
    postgres-imdb:latest

sleep 10

docker container logs --follow imdb

docker container ls -a