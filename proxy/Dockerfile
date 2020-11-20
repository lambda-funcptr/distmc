FROM debian:latest
COPY . /srv/distmc/proxy
RUN apt update && apt -y install openjdk-11-jre-headless wget
WORKDIR /srv/distmc/proxy
RUN sh configure
ENTRYPOINT sh /srv/distmc/proxy/start.sh