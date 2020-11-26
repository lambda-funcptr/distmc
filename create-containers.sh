#!/bin/sh

cd $(dirname $0)

docker stop distmc-proxy distmc-nexus
docker container rm distmc-proxy distmc-nexus

docker network rm distmc-net
docker network create -d bridge distmc-net

./mkimages.sh

docker create \
       --network=distmc-net -p 25565:25565 -p 19132:19132 --name distmc-proxy distmc-proxy
docker create \
       --network=distmc-net --name distmc-nexus distmc-nexus

docker update --restart unless-stopped distmc-proxy
docker update --restart unless-stopped distmc-nexus
