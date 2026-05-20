# System Architecture

## Frontend
- React application
- Hosted on AWS S3
- Distributed with CloudFront CDN

## Backend
- Golang API service
- Containerized using Docker
- Deployed on EC2 instances behind an Application Load Balancer

## Database
- MongoDB Atlas used for persistent storage

## Caching
- AWS ElastiCache Redis used for sessions and caching

## Infrastructure
- Managed using Terraform Infrastructure as Code

## CI/CD
- GitHub Actions used for:
  - Frontend deployment
  - Backend deployment
  - Infrastructure automation

## Monitoring
- AWS CloudWatch used for logs and monitoring