# StartTech Application

## Overview
This repository contains the full-stack StartTech application.

## Components

### Frontend
- React application
- Hosted on AWS S3
- Distributed using CloudFront CDN

### Backend
- Golang API
- Dockerized deployment
- Hosted on EC2 instances behind an Application Load Balancer

## CI/CD Pipelines

### Frontend Pipeline
- Install dependencies
- Run tests
- Build React application
- Run npm audit
- Deploy to S3

### Backend Pipeline
- Run Go tests
- Build Docker image
- Scan Docker image
- Deploy backend application

## Deployment Scripts
Located in:

```text
scripts/
## Monitoring

- AWS CloudWatch Logs
- CloudWatch alarms
- Log Insights queries

## Infrastructure

Infrastructure provisioning is managed in the separate:

```text
starttech-infra