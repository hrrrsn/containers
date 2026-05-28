#!/bin/bash
source /etc/os-release
date=$(date +%Y%m%d)

echo $VERSION_ID
echo $VERSION_ID-$date
echo $(date +%Y-%m-%d)
