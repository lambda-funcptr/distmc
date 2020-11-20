#!/bin/bash

docker stop distmc-nexus distmc-proxy
docker rm distmc-nexus distmc-proxy

docker image prune -af
