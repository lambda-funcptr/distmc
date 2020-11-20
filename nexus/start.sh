#!/bin/sh

cd $(dirname $0)

echo "eula=true" > eula.txt

java -server -XX:+UseG1GC -XX:MaxGCPauseMillis=500 -XX:+UseStringDeduplication -Xmx1G -Xms1G -XX:UseSSE=3 -jar  server.jar nogui