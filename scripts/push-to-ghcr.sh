#!/bin/bash

# Push the Docker image to GitHub Container Registry
#
# Environment variables:
#   GITHUB_TOKEN - GitHub token for authentication
#
# Usage:
#   ./push-to-ghcr.sh

set -u # or set -o nounset
"$VERSION"

echo ${{secrets.ACCESS_TOKEN}} | docker login ghcr.io --username hbahramian --password-stdin
docker push ghcr.io/hbahramian/arithmetic-service:$VERSION

echo "Image successfully pushed to GitHub Container Registry." 