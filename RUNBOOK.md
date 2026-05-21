# StartTech Application Runbook

## Overview

This runbook documents operational procedures for deploying, maintaining, monitoring, and troubleshooting the StartTech application.

---

# Application Components

The application consists of:

- React frontend
- Golang backend API
- MongoDB Atlas
- Redis cache
- Docker containers
- GitHub Actions CI/CD

---

# Backend Operations

## Run Backend Locally

Navigate to backend directory:

```bash
cd backend
```

Install dependencies:

```bash
go mod tidy
```

Run application:

```bash
go run main.go
```

---

# Docker Operations

## Build Docker Image

```bash
docker build -t starttech-backend .
```

## Run Docker Container

```bash
docker run -p 8080:8080 starttech-backend
```

## View Running Containers

```bash
docker ps
```

## View Container Logs

```bash
docker logs <container-id>
```

---

# Frontend Operations

Navigate to frontend directory:

```bash
cd frontend
```

Install dependencies:

```bash
npm install
```

Run frontend:

```bash
npm run dev
```

Build frontend:

```bash
npm run build
```

---

# CI/CD Operations

GitHub Actions automates:

- Testing
- Docker builds
- Docker image push
- Rolling deployments

Workflow location:

```bash
.github/workflows/backend-ci-cd.yml
```

---

# Deployment Process

Deployment flow:

1. Push code to `main`
2. GitHub Actions workflow triggers
3. Docker image built
4. Docker image pushed to Docker Hub
5. Auto Scaling Group instance refresh triggered
6. New EC2 instances deployed automatically

---

# Health Checks

Backend health endpoint:

```bash
/health
```

Expected response:

```json
{
  "status": "ok"
}
```

---

# Monitoring

Application monitoring uses:

- CloudWatch
- Load balancer health checks
- Auto Scaling metrics
- Docker logs

---

# Troubleshooting

## Backend Not Responding

Check:

```bash
docker ps
docker logs starttech-backend
```

Verify backend port:

```bash
sudo ss -tulpn | grep 8080
```

---

## GitHub Actions Failure

Verify:

- Docker Hub credentials
- AWS credentials
- Workflow syntax
- GitHub Secrets

---

## Docker Container Crash

Check logs:

```bash
docker logs starttech-backend
```

Common causes:

- Invalid environment variables
- MongoDB connection failure
- Port conflicts

---

# Environment Variables

Required backend variables:

```env
MONGO_URI=
DB_NAME=
PORT=
JWT_SECRET_KEY=
```

---

# Recovery Procedure

## Redeploy Backend

Push latest code to `main` branch.

GitHub Actions automatically redeploys the backend infrastructure.

---

# Maintenance Tasks

Recommended maintenance:

- Rotate secrets
- Update dependencies
- Monitor logs
- Review alarms
- Update Docker images

---

# Author

**Eseohe Asuelimen**  
Cloud Engineering Student, AltSchool Africa  
Assessment 3 – Production-Grade AWS Infrastructure Project