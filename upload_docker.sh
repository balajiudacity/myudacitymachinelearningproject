#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=udacitymicroserviceimg

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username udacitybv
docker tag udacitypinzonimage andresaaap/udacitypinzonimage:v1.0

# Step 3:
# Push image to a docker repository
docker push udacitybv/udacitypinzonimage:v1.0