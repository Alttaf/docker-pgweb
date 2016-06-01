FROM    alpine

EXPOSE  8081

ENV     POSTGRES=postgres \
        PORT=5432 \
        USER=postgres \
        POSTGRES_PASSWORD=postgres \
        POSTGRES_DB=postgres \
        SSL=disable

RUN     apk update && apk add curl
RUN     curl --silent -L -o pgweb_linux_386.zip https://github.com/sosedoff/pgweb/releases/download/v0.9.2/pgweb_linux_386.zip \
        && unzip pgweb_linux_386.zip \
        && rm pgweb_linux_386.zip

COPY    docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
