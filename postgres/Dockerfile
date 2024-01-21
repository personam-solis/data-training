FROM postgres:16

ENV POSTGRES_PASSWORD=postgres \
    POSTGRES_USER=postgres \
    POSTGRES_DB=imdbdata

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

STOPSIGNAL SIGINT

EXPOSE 5432

RUN /usr/bin/apt-get update && \
    /usr/bin/apt-get install -y wget && \
    rm -rf /var/lib/apt/lists/*

ADD container_files/custom-postgresql.conf /etc/postgresql/postgresql.conf

ADD container_files/1-init-imdbdata.sh /docker-entrypoint-initdb.d/

ADD container_files/download-db.sh /usr/local/bin/

ADD container_files/docker-entrypoint.sh /usr/local/bin/

RUN chmod -fv 777 /etc/postgresql/postgresql.conf \
    /docker-entrypoint-initdb.d/* \
    /usr/local/bin/download-db.sh \
    /usr/local/bin/docker-entrypoint.sh

CMD ["postgres"]