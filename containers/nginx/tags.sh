#!/bin/bash
source /etc/os-release
date=$(date +%Y%m%d)

nginx=$(nginx -v 2>&1 | cut -d'/' -f2)
el=$(echo $VERSION_ID | cut -d'.' -f1)

echo $nginx
echo $nginx-fc$el
echo $nginx-fc$el-$date