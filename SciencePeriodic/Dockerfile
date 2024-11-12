FROM postgres:17.0

ENV POSTGRES_DB=science_periodic
ENV POSTGRES_USER=science_periodic_user
ENV POSTGRES_PASSWORD=password

COPY init_db/*.sql /docker-entrypoint-initdb.d/

EXPOSE 5432