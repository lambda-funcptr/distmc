#!/bin/sh

cd $(dirname $0)

sh configure

java -server -XX:+UseG1GC -XX:MaxGCPauseMillis=500 -XX:+UseStringDeduplication -Xmx1G -Xms1G -XX:UseSSE=3 -jar  server.jar
