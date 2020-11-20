#!/bin/sh

cd $(dirname $0)

sh proxy/configure
sh nexus/configure

screen -dmS distmc-nexus sh nexus/start.sh

cd proxy
screen -dmS distmc-proxy java -Xms1G -Xmx1G -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -XX:MaxInlineLevel=15 -jar proxy.jar