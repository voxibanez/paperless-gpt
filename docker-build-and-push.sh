#!/bin/sh -e

# Build the Docker image for amd64 and arm64
docker build --platform linux/arm64 -t voxibanez/paperless-gpt:latest .
docker build --platform linux/amd64 -t voxibanez/paperless-gpt:latest .

# Push the Docker image to Docker Hub
docker push voxibanez/paperless-gpt:latest
