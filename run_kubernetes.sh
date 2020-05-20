#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
<<<<<<< HEAD
export dockerpath=rebordao/boston-predictions

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run "boston-predictions" --image=$dockerpath --labels app="boston-predictions"
=======
dockerpath=rebordao/boston_predictions

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run "boston_predictions" --image=$dockerpath --port=80 --labels app="boston_predictions"
>>>>>>> 896a9c378eee2413cf2fea36b45be2d306e387af


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
<<<<<<< HEAD
kubectl port-forward boston-predictions 8000:80
=======
kubectl port-forward boston_predictions 8000:80
>>>>>>> 896a9c378eee2413cf2fea36b45be2d306e387af

