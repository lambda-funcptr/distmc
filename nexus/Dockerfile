FROM debian:latest
COPY . /srv/distmc/nexus
RUN apt update && apt -y install openjdk-11-jre-headless wget
WORKDIR ["/srv/distmc/nexus"]
ENTRYPOINT sh /srv/distmc/nexus/start.sh