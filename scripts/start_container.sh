#!/bin/bash
# Run the sample webapp
set -e

# Pull the Docker image from Docker Hub
docker pull shubhamsonirg/simple-python-app:latest

# Run the Docker image as a container
docker run -d -p 5000:5000 shubhamsonirg/simple-python-app:latest
