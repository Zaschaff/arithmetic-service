#!/bin/bash

# Push the Docker image to GitHub Container Registry
#
# Environment variables:
#   GITHUB_TOKEN - GitHub token for authentication
#
# Usage:
#   ./push-to-ghcr.sh

set -e

echo "Logging in to GitHub Container Registry..."
echo $GITHUB_TOKEN | docker login ghcr.io -u $GITHUB_ACTOR --password-stdin

echo "Tagging image for GitHub Container Registry..."
docker tag arithmetic-service:latest ghcr.io/$GITHUB_REPOSITORY:latest

echo "Pushing image to GitHub Container Registry..."
docker push ghcr.io/$GITHUB_REPOSITORY:latest

echo "Image successfully pushed to GitHub Container Registry." 