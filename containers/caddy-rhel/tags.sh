#!/bin/bash
source /etc/os-release
date=$(date +%Y%m%d)

caddy=$(caddy version)
el=$(echo $VERSION_ID | cut -d'.' -f1)

echo $caddy
echo $caddy-el$el
echo $caddy-el$el-$date