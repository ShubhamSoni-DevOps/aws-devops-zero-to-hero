#!/bin/bash
set -e

containers=$(docker ps -aq)

if [ -n "$containers" ]; then
  docker rm -f $containers
else
  echo "No containers to remove."
fi

docker image prune -af
