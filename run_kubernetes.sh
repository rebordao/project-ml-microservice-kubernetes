#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
export dockerpath=rebordao/boston-predictions

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run "boston-predictions" --image=$dockerpath --port=80 --labels app="boston-predictions"

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward boston-predictions 8000:80

