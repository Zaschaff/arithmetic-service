#!/bin/bash

# Push the Docker image to Azure Container Registry
#
# Environment variables:
#   CONTAINER_REGISTRY - Azure Container Registry name
#   CONTAINER_REGISTRY_UN - Azure Container Registry username
#   CONTAINER_REGISTRY_PW - Azure Container Registry password
#
# Usage:
#   ./push-to-acr.sh

set -e

echo "Logging in to Azure Container Registry..."
docker login $CONTAINER_REGISTRY.azurecr.io -u $CONTAINER_REGISTRY_UN -p $CONTAINER_REGISTRY_PW

echo "Tagging image for Azure Container Registry..."
docker tag arithmetic-service:latest $CONTAINER_REGISTRY.azurecr.io/arithmetic-service:latest

echo "Pushing image to Azure Container Registry..."
docker push $CONTAINER_REGISTRY.azurecr.io/arithmetic-service:latest

echo "Image successfully pushed to Azure Container Registry." 