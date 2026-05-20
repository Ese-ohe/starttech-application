#!/bin/bash

echo "Deploying backend application..."

docker build -t starttech-backend .

echo "Backend deployment completed."