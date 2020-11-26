#!/bin/sh

cd $(dirname $0)

echo "eula=true" > eula.txt

tmux new -s console -d "/usr/lib/jvm/java-11-openjdk/bin/java -server -XX:+UseG1GC -XX:MaxGCPauseMillis=500 -XX:+UseStringDeduplication -Xmx1G -Xms1G -XX:UseSSE=3 -jar  server.jar nogui"
tmux wait-for console