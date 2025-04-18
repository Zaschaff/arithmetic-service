#!/bin/bash

# Build the Docker image for the application
#
# Environment variables:
#   None
#
# Usage:
#   ./build-image.sh

set -e

echo "Building Docker image..."
docker build -t arithmetic-service:latest --file Dockerfile .

echo "Docker image build complete." 