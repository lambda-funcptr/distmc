#!/bin/sh

cd $(dirname $0)

cat config.yml.template > config.yml

/usr/lib/jvm/java-11-openjdk/bin/java -Xms1G -Xmx1G -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -XX:MaxInlineLevel=15 -jar proxy.jar
