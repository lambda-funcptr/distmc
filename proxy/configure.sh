#!/bin/sh

cd $(dirname $0)

MC_VERSION=1.16
WATERFALL_BUILD=389

wget "https://papermc.io/api/v1/waterfall/$MC_VERSION/$WATERFALL_BUILD/download" -O proxy.jar

sh plugins/DownloadPlugins.sh
