FROM harbor.fnptr.net/docker/library/alpine:latest
COPY . /srv/distmc/proxy
RUN apk update && apk add openjdk11-jre-headless
WORKDIR /srv/distmc/proxy
RUN sh configure
ENTRYPOINT sh /srv/distmc/proxy/start.sh