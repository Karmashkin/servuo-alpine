FROM alpine:latest
MAINTAINER Karmashkin <vlad@zolotous.com>

ENV UO_HOME /UO
VOLUME /UO

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk add --no-cache bash mono make git gosu; \
    ln -s /usr/bin/gosu /usr/local/bin/gosu; \
    addgroup uo; \
    adduser -D -S uo -s /bin/bash -h ${UO_HOME} -g "UO server user" -G uo; \
    chown -R uo:uo ${UO_HOME}

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

EXPOSE 2593

CMD [ "/docker-entrypoint.sh" ]
