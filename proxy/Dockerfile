FROM alpine:latest
COPY . /srv/distmc/proxy
RUN apk update && apk add openjdk11-jre-headless
WORKDIR /srv/distmc/proxy
RUN sh configure.sh
ENTRYPOINT sh /srv/distmc/proxy/start.sh