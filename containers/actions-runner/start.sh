#!/bin/bash
echo "----------------------------------------"
echo "User: $(whoami) (UID: $(id -u), GID: $(id -g))"
echo "Repository: ${REPO}"
echo "----------------------------------------"

cd /home/podman/actions-runner

REG_TOKEN=$(curl -X POST -H "Authorization: Bearer ${TOKEN}" -H "Accept: application/vnd.github+json" https://api.github.com/repos/${REPO}/actions/runners/registration-token | jq .token --raw-output)

./config.sh --url https://github.com/${REPO} --token ${REG_TOKEN} --disableupdate --unattended

cleanup() {
    echo "Removing runner..."
    ./config.sh remove --token ${REG_TOKEN}
}

trap 'cleanup; exit 130' INT
trap 'cleanup; exit 143' TERM

./run.sh & wait $!