FROM docker.io/guacamole/guacamole:latest AS guacamole
FROM docker.io/postgres:16

COPY --from=guacamole /opt/guacamole/postgresql/schema/*.sql /docker-entrypoint-initdb.d/
