FROM postgres:13.4

COPY ./postgres.init.sql /docker-entrypoint-initdb.d/
