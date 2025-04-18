#!/bin/bash

# Deploys the microservice to Kubernetes.
#
# Assumes the image has already been built and published to the container registry.
#
# Environment variables:
#   CONTAINER_REGISTRY - The hostname of your container registry.
#   VERSION - The version number of the image to deploy.
#
# Usage:
#   ./deploy.sh

set -u
"${CONTAINER_REGISTRY}"
"${VERSION}"

envsubst < ./deploy.yml | kubectl apply -f - 