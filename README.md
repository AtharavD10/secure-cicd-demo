# 🚀 Secure CI/CD & Kubernetes Deployment Platform

A hands-on DevOps and DevSecOps project demonstrating how a containerized Python Flask application can be tested, secured, and deployed using modern CI/CD and Kubernetes practices.

The project started as a secure CI/CD pipeline using GitHub Actions, Docker, pytest, and Trivy, and was later extended with Kubernetes, Kind, ConfigMaps, Secrets, health probes, Helm deployments, upgrades, and rollbacks.

---

## 📌 Overview

This project demonstrates a modern DevOps workflow for a containerized Python Flask application.

The CI pipeline automatically:

- Validates the application with automated tests
- Builds the Docker image
- Scans the container image for security vulnerabilities using Trivy

The application is then deployed locally to a Kubernetes cluster using Kind.

The Kubernetes environment demonstrates:

- Multiple application replicas
- Service-based networking
- Liveness and readiness probes
- Self-healing
- Rolling updates
- ConfigMaps
- Secrets
- Helm-based deployments
- Helm upgrades and rollbacks

The entire project is designed to run locally without requiring AWS or other cloud credentials.

---

## ✨ Features

### CI/CD

- Automated CI pipeline using GitHub Actions
- Python dependency installation
- Automated endpoint testing with pytest
- Automated Docker image builds
- Container vulnerability scanning using Trivy

### Containerization

- Flask REST API
- Dockerized application
- Lightweight Python base image
- Reproducible container environment

### Kubernetes

- Local Kubernetes cluster using Kind
- Kubernetes Deployment
- Multiple replicas
- Kubernetes Service
- Self-healing demonstration
- Rolling updates
- Liveness probes
- Readiness probes
- ConfigMaps
- Kubernetes Secrets
- Namespace isolation

### Helm

- Custom Helm chart
- Configurable `values.yaml`
- Helm templates
- Helm lint validation
- Helm template rendering
- Helm installation
- Helm upgrades
- Helm release history
- Helm rollback

---

## 🏗️ Architecture

```mermaid
flowchart TD
    A[Developer] -->|git push| B[GitHub Repository]

    B --> C[GitHub Actions]

    C --> D[Run pytest]
    D --> E[Build Docker Image]
    E --> F[Trivy Security Scan]

    F --> G[Docker Image]

    G --> H[Kind Kubernetes Cluster]

    H --> I[Helm]
    I --> J[Kubernetes Deployment]

    J --> K[Pod 1]
    J --> L[Pod 2]

    K --> M[Kubernetes Service]
    L --> M

    M --> N[Flask Application]

    J --> O[ConfigMap]
    J --> P[Secret]

    J --> Q[Readiness Probe]
    J --> R[Liveness Probe]
