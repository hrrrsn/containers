#!/bin/bash
source /etc/os-release
date=$(date +%Y%m%d)

runner=$(cat /etc/runner-version)
el=$(echo $VERSION_ID)

echo $el-$runner
echo $runner
echo $el-$runner-$date