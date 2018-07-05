FROM mysql:5.7

ARG TOOLBOX_VERSION
ARG MYSQL_ROOT_PASSWORD

RUN apt update && apt install wget tar -y


COPY config.sh docker-entrypoint-initdb.d/config.sh
COPY init.sh docker-entrypoint-initdb.d/init.sh
