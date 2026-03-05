#!/bin/bash
date=$(date +%Y%m%d)
fedora_ver=$(awk '{print $3}' /etc/fedora-release)
echo $(date +%Y-%m-%d)
echo $(date +%Y-%m-%d)-fc$fedora_ver
echo fc$fedora_ver