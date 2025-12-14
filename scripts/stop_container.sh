#!/bin/bash
set -e

# Stop the running container (if any)
containerID=$("docker ps -a | awk -F " " '{print $1}' | grep -vi container")
docker container stop -f ${containerID}
docker conatiner rm -f ${containerID}

# Removing the old images (if any)
docker image prune -af
