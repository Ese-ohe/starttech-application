#!/bin/bash

echo "Running application health checks..."

curl -f http://localhost:8080/health || exit 1

echo "Health check passed."