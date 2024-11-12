FROM postgres:17.0

ENV POSTGRES_DB=hr
ENV POSTGRES_USER=hr_user
ENV POSTGRES_PASSWORD=password

COPY init_db/*.sql /docker-entrypoint-initdb.d/

EXPOSE 5432