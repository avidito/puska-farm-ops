FROM postgres:15.3

WORKDIR /src
COPY seed/ /seed
COPY src/ /src

COPY src/init.sh /docker-entrypoint-initdb.d/
