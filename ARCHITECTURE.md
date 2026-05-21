# StartTech Application Architecture

## Overview

StartTech is a cloud-native full-stack application consisting of:

- React frontend
- Golang backend API
- MongoDB database
- Redis cache
- Dockerized backend services
- AWS cloud infrastructure

The application is deployed using a production-style architecture with high availability, scalability, and CI/CD automation.

---

# High-Level Architecture

```text
Users
   │
   ▼
CloudFront CDN
   │
   ▼
S3 Frontend Hosting
   │
   ▼
Application Load Balancer
   │
   ▼
Auto Scaling Group
   │
   ▼
Dockerized Golang Backend
   │
   ├── MongoDB Atlas
   │
   └── Redis ElastiCache
```

---

# Frontend Architecture

Frontend stack:

- React
- Vite
- Static asset hosting on S3
- CDN delivery using CloudFront

Frontend responsibilities:

- User interface
- API consumption
- Client-side rendering
- User interactions

---

# Backend Architecture

Backend stack:

- Golang
- Gin framework
- Docker
- REST APIs

Backend responsibilities:

- API endpoints
- Authentication
- Database operations
- Redis caching
- Business logic

---

# Database Layer

Primary database:

- MongoDB Atlas

Responsibilities:

- Persistent data storage
- Application records
- User data
- API persistence

---

# Caching Layer

Caching solution:

- AWS ElastiCache Redis

Responsibilities:

- Temporary caching
- Session optimization
- Performance improvement

---

# Infrastructure Components

Infrastructure services include:

- AWS EC2
- Auto Scaling Group
- Application Load Balancer
- CloudFront
- S3
- Redis ElastiCache
- CloudWatch

Provisioning is managed using Terraform.

---

# Deployment Flow

Deployment process:

1. Developer pushes code to GitHub
2. GitHub Actions workflow triggers
3. Tests execute
4. Docker image builds
5. Docker image pushed to Docker Hub
6. Auto Scaling Group instance refresh triggered
7. New backend instances deployed automatically

---

# Availability and Scaling

High availability is achieved using:

- Multiple EC2 instances
- Auto Scaling Group
- Application Load Balancer
- Multi-subnet deployment

Scaling is based on:

- CloudWatch CPU metrics
- Auto Scaling policies

---

# Monitoring

Monitoring services:

- CloudWatch dashboards
- CloudWatch alarms
- Application logs
- Load balancer health checks

---

# Security

Security implementation includes:

- IAM roles
- Security groups
- Environment variables
- GitHub Secrets
- Restricted infrastructure access

---

# Repository Relationship

Application repository:

```bash
starttech-application
```

Infrastructure repository:

```bash
starttech-infra
```

The infrastructure repository provisions all AWS resources used by the application.