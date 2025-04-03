#!/bin/bash
echo "Starting VocalLM backend with Docker..."
cd "$(dirname "$0")"
docker-compose up --build
