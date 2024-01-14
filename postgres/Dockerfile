FROM postgres:16

ENV POSTGRES_PASSWORD=postgres \
    POSTGRES_USER=postgres \
    POSTGRES_DB=imdbdata

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

STOPSIGNAL SIGINT

EXPOSE 5432

ADD container_files/custom-postgresql.conf /etc/postgresql/postgresql.conf

ADD container_files/1-init-imdbdata.sh /docker-entrypoint-initdb.d/

CMD ["postgres"]