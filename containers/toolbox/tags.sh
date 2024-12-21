#!/bin/bash
date=$(date +%Y%m%d)
fedora_ver=$(awk '{print $3}' /etc/fedora-release)
echo fc$fedora_ver
echo fc$fedora_ver-$date