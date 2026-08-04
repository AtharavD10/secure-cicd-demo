![Python](https://img.shields.io/badge/Python-3.12-blue?logo=python)
![Docker](https://img.shields.io/badge/Docker-Containerized-2496ED?logo=docker)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-CI-2088FF?logo=github-actions)
![Trivy](https://img.shields.io/badge/Trivy-Security_Scan-success)
🚀 Secure CI/CD Pipeline with GitHub Actions & Trivy
📌 Overview

This project demonstrates a modern DevSecOps workflow by building a containerized Python Flask application and automating testing, Docker image creation, and vulnerability scanning using GitHub Actions and Trivy.

The pipeline automatically validates application functionality, builds a Docker image, scans it for known vulnerabilities, and reports the results before the build is considered successful.

✨ Features
Containerized Flask REST API
Automated CI pipeline using GitHub Actions
Docker image build automation
Automated endpoint testing using pytest
Container vulnerability scanning using Trivy
Security-first CI workflow
🛠 Tech Stack
Category	Technology
Language	Python
Framework	Flask
Containerization	Docker
Version Control	Git
Repository	GitHub
CI/CD	GitHub Actions
Testing	pytest
Security	Trivy

## Architecture
```mermaid
flowchart LR
    A[Developer] -->|Git Push| B[GitHub Repository]
    B --> C[GitHub Actions]

    C --> D[Checkout Code]
    D --> E[Install Dependencies]
    E --> F[Run Tests]
    F --> G[Build Docker Image]
    G --> H[Trivy Security Scan]
    H --> I[Pipeline Passed]
```
