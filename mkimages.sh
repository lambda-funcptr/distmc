#!/bin/sh

cd $(dirname $0)

cd nexus
docker build --tag distmc-nexus .
cd ..

cd proxy
docker build --tag distmc-proxy .
cd ..
