#!/bin/bash
set -e

# Stop the running container (if any)
containerID=$(docker ps -a | awk '{print $1}' | grep -vi container)
for ID in ${containerID}
do
  docker stop ${ID}
  docker rm ${ID}
done
# Removing the old images (if any)
docker image prune -af
