#!/bin/bash
echo "----------------------------------------"
echo "User: $(whoami) (UID: $(id -u), GID: $(id -g))"
echo "Repository: ${REPO}"
echo "----------------------------------------"

cd /opt/actions-runner

./config.sh --url https://github.com/${REPO} --token ${TOKEN} --disableupdate --unattended

cleanup() {
    echo "Removing runner..."
    ./config.sh remove --token ${TOKEN}
}

trap 'cleanup; exit 130' INT
trap 'cleanup; exit 143' TERM

./run.sh & wait $!