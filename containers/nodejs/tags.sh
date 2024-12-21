#!/bin/bash
node_ver=$(node --version)
fedora_ver=$(awk '{print $3}' /etc/fedora-release)
echo $node_ver
echo $node_ver-fc$fedora_ver