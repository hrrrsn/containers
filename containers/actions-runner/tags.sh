#!/bin/bash
source /etc/os-release
date=$(date +%Y%m%d)

runner=$(cat /etc/runner-version)
el=$(echo $VERSION_ID)

echo $runner
echo $runner-$el
echo $runner-$el-$date
echo $(date +%Y-%m-%d)