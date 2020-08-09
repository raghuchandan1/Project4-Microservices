#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=raghuchandan1/devops

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment devops --image=raghuchandan1/devops

# Verification
kubectl get deployments

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment devops --type=LoadBalancer --port=80

# Verification
kubectl get services

# Start service
minikube service devops

#Forward from port 80 to 8000
kubectl port-forward deployment/devops 8000:80
