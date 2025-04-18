#!/bin/bash

# Build the Docker image for the application
#
# Environment variables:
#   None
#
# Usage:
#   ./build-image.sh

set -u # or set -o nounset
"$VERSION"

echo "Building Docker image..."
docker build -t ghcr.io/hbahramian/arithmetic-service:$VERSION --file ./Dockerfile .

echo "Docker image build complete." 