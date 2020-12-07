#!/bin/sh

cd $(dirname $0)

docker stop distmc-proxy distmc-nexus
docker container rm distmc-proxy distmc-nexus

./mkimages.sh

docker create \
       --network=host --name distmc-proxy distmc-proxy
docker create \
       --network=host --name distmc-nexus distmc-nexus

docker update --restart unless-stopped distmc-proxy
docker update --restart unless-stopped distmc-nexus
