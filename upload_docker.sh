#!/usr/bin/env bash

# Step 1:
dockerpath=udacitymicroserviceimg

# Step 2:
echo "Docker ID And Image: ${dockerpath}"
docker login --username udacitybv
docker tag udacitymicroserviceimg udacitybv/udacitymicroserviceimg:v1.0

# Step 3:
docker push udacitybv/udacitymicroserviceimg:v1.0
