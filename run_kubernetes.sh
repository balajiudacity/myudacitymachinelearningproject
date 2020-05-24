#!/usr/bin/env bash

# Step 1:
dockerpath=udacitymicroserviceimg
# Step 2:
kubectl run microservice --img=udacitybv/udacitymicroserviceimg:v1.0 --port=80

# Step 3:
kubectl get pod

# Step 4:
kubectl port-forward microservice 8000:80

