#!/bin/bash
set -e

echo "Stopping and removing all containers..."

containers=$(docker ps -aq)

if [ -n "$containers" ]; then
  docker stop $containers
  docker rm $containers
else
  echo "No containers found."
fi

echo "Removing unused images..."
docker image prune -af

echo "Cleanup completed successfully."
