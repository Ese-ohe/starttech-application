# StartTech Application

## Overview

StartTech is a full-stack cloud-native application consisting of:

- Golang backend API
- React frontend
- MongoDB database
- Redis caching layer
- Dockerized services
- CI/CD automation using GitHub Actions

The application is deployed on AWS using a production-style infrastructure with Auto Scaling, Application Load Balancer, CloudFront, and Terraform.

---

# Application Stack

## Backend

- Golang
- Gin Framework
- MongoDB Atlas
- Redis
- Docker

## Frontend

- React
- Vite

## DevOps

- Docker
- GitHub Actions
- AWS
- Terraform

---

# Features

- REST API backend
- Frontend web application
- Health check endpoint
- Docker containerization
- Rolling deployments
- Auto scaling
- CloudFront CDN delivery
- CI/CD automation

---

# Backend API

Default backend port:

```bash
8080
```

Health endpoint:

```bash
/health
```

---

# Running Locally

## Backend

Navigate to backend directory:

```bash
cd backend
```

Install dependencies:

```bash
go mod tidy
```

Run backend:

```bash
go run main.go
```

---

# Docker

## Build Backend Image

```bash
docker build -t starttech-backend .
```

## Run Backend Container

```bash
docker run -p 8080:8080 starttech-backend
```

---

# Environment Variables

Backend requires:

```env
MONGO_URI=
DB_NAME=
PORT=
JWT_SECRET_KEY=
```

---

# CI/CD Pipeline

GitHub Actions automates:

- Testing
- Docker image build
- Docker image push
- Rolling deployments
- Auto Scaling Group refresh

Workflow file:

```bash
.github/workflows/backend-ci-cd.yml
```

---

# Deployment Architecture

Infrastructure repository:

```bash
starttech-infra
```

Contains:

- Terraform modules
- AWS infrastructure
- CloudFront
- Auto Scaling
- Redis
- Monitoring
- Runbooks

---

# Repository Structure

```bash
backend/
frontend/
.github/
```

---

# Monitoring

Monitoring is implemented using:

- CloudWatch
- Auto Scaling alarms
- Application Load Balancer health checks

---

# Author

## Author

**Eseohe Asuelimen**  
Cloud Engineering Student, AltSchool Africa  
Assessment 3 – Production-Grade AWS Infrastructure Project