FROM postgres:16

# Required environment variables
ENV POSTGRES_PASSWORD=postgres \
    POSTGRES_USER=postgres

# Ensure entrypoint stays the same
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

STOPSIGNAL SIGINT

# This is the container port that needs to be exposed
EXPOSE 5432

# Install wget
RUN /usr/bin/apt-get update && \
    /usr/bin/apt-get install -y wget && \
    rm -rf /var/lib/apt/lists/*

# Copy the custom postgres config
ADD container_files/custom-postgresql.conf /etc/postgresql/postgresql.conf

# Copy all files used when database is initialized (alphabetical: .sql or .sh)
ADD container_files/init/* /docker-entrypoint-initdb.d/

# Download imdb database if it does not exist in the volume
ADD container_files/download-db.sh /usr/local/bin/

# Add the custom entrypoint (added the download script)
ADD container_files/docker-entrypoint.sh /usr/local/bin/

# Change permissions of all the files
RUN chmod -fv 777 /etc/postgresql/postgresql.conf \
    /docker-entrypoint-initdb.d/* \
    /usr/local/bin/download-db.sh \
    /usr/local/bin/docker-entrypoint.sh

# When container runs, this is the default command
CMD ["postgres"]