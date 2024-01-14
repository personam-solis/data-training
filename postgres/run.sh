#!/bin/bash

docker run -d \
    -p 5400:5432  \
    --cpus 4 \
    --health-timeout 30s \
    --memory 16g \
    --name imdb \
    postgres-imdb:latest

sleep 10

docker container logs --tail 50 weather_db

docker container ls -a