#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=udacitymicroserviceimg

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $dockerpath --image=udacitybv/udacitymicroserviceimg:v1.0 --port=80

# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
kubectl port-forward microservice 8000:80 


# Get logs
kubectl logs `kubectl get pods -o=name`

kubectl run microservice --image='udacitymicroserviceimg:v1.0' --port 80
