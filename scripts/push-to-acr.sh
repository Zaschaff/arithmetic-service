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

set -u # or set -o nounset
"$CONTAINER_REGISTRY"
"$VERSION"
"$CONTAINER_REGISTRY_UN"
"$CONTAINER_REGISTRY_PW"

echo $REGISTRY_PW | docker login --username $CONTAINER_REGISTRY_UN --password-stdin $CONTAINER_REGISTRY
docker tag ghcr.io/hbahramian/arithmetic-service:$VERSION    $CONTAINER_REGISTRY/arithmetic-service:$VERSION
docker push $CONTAINER_REGISTRY/arithmetic-service:$VERSION

echo "Image successfully pushed to Azure Container Registry." 