FROM alpine:latest
COPY . /srv/distmc/nexus
RUN apk update && apk add openjdk11-jre-headless tmux
WORKDIR /srv/distmc/nexus
RUN sh configure
ENTRYPOINT sh /srv/distmc/nexus/start.sh