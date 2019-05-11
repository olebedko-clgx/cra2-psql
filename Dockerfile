
FROM postgres:11.3

COPY init-db.sh /docker-entrypoint-initdb.d/init-db.sh

RUN ["chmod", "+x", "/docker-entrypoint-initdb.d/init-db.sh"]

EXPOSE 5432

WORKDIR /


