# Baby Tools Shop

A simple Django-based web application for managing a baby tools shop.
The project is containerized with Docker and follows clean code conventions.

---

## Table of Contents
1. [Repository](#repository)
2. [Prerequisites](#prerequisites)
3. [Quickstart](#quickstart)
4. [Usage](#usage)
5. [Documentation](#documentation)
6. [Security Notes](#security-notes)
7. [Code Conventions](#code-conventions)
8. [Testing](#testing)

---

## 1. Repository
This repository contains:
- `babyshop_app/` → Django application code
- `Dockerfile` → Instructions to build the container image
- `entrypoint.sh` → Startup script for migrations and running the server
- `requirements.txt` → Project dependencies
- `.env.example` → Example environment configuration file
- `.gitignore` → Ignored files and folders
- `README.md` → Project documentation

No unnecessary files are included in the repository.

---

## 2. Prerequisites

Before running the application, make sure you have installed:

- Docker installed on your system

- Git installed to clone the repository

---

## 3. Quickstart

# Clone the repository

```bash
git clone https://github.com:behrouzRajaei/baby-tools-shop.git
cd baby-tools-shop
```

# Prepare the environment file

```bash
cp .env.example .env
```

# Build and run the container

```bash
docker build -t babyshop-app .
docker run -it -p 8025:8000 --env-file .env \
-v $(pwd)/project_images:/app/project_images \
babyshop-app
```

# The app will be available at:

```
http://<server-ip>:8025
```
---

## 4. Usage

### Admin access

# Create a superuser:
```bash
docker exec -it <container_name> python manage.py createsuperuser
```
# Login at:
```
http://<server-ip>:8025/admin
```
# From here you can:

- Add categories

- Add products

- Manage users

### Configuration

# All sensitive settings are stored in .env. Adjust values like:

- SECRET_KEY

- DEBUG

- ALLOWED_HOSTS

- Database settings

### Container configuration

- Data such as uploaded images is persisted with Docker volumes.

- To stop the container:
```bash
docker ps
docker stop <container_id>
```
---

## 5. Documentation

- Project and code documentation is provided inside this README.md.

- Language: English (as required by checklist).

---

## 6. Security Notes

- No passwords, tokens, or sensitive data are stored in the repository.

- Example data is only provided via .env.example.

- No login credentials or server IPs are committed.

---

## 7. Code Conventions

- Environment variables use UPPER_CASE_WITH_UNDERSCORE
  Example: SECRET_KEY, DEBUG, ALLOWED_HOSTS

- Always reference variables with ${VAR_NAME} (not $VAR_NAME) to avoid errors.

- Always use ${VAR_NAME} in configs.

- Sensitive configs (tokens, passwords) are only stored in .env, never in the codebase.

---

## 8. Testing

Before submission, ensure:

- The app runs locally before containerization.

- The Docker container builds successfully.

- The app is reachable at http://<server-ip>:8025

---
