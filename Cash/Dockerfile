FROM postgres:17.0

ENV POSTGRES_DB=cash
ENV POSTGRES_USER=cash_user
ENV POSTGRES_PASSWORD=password

COPY init_db/*.sql /docker-entrypoint-initdb.d/

EXPOSE 5432