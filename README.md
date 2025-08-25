# Baby Tools Shop

A simple Django-based web application for managing a baby tools shop.
The project is containerized with Docker and follows clean code conventions.

---

## Table of Contents
1. [Repository](#repository)
2. [Quickstart](#quickstart)
3. [Usage](#usage)
4. [Documentation](#documentation)
5. [Security Notes](#security-notes)
6. [Code Conventions](#code-conventions)
7. [Testing](#testing)

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

## 2. Quickstart
### Requirements
- Docker installed on your system

### Run the app

```bash
# Clone the repository
git clone -b development git@github.com:behrouzRajaei/baby-tools-shop.git
cd baby-tools-shop
```

# Build and run the container

```bash
docker build -t babyshop-app .
docker run -it -p 8000:8000 --env-file .env babyshop-app
```

The app will be available at:
http://<your-server-ip>:8000

---

## 3. Usage

The container automatically handles:

- Installing dependencies

- Applying database migrations

- Collecting static files

- Starting the Django server

### Configuration:

- Copy .env.example → .env

- Adjust values like SECRET_KEY, DEBUG, ALLOWED_HOSTS, and database settings.

Example:
 SECRET_KEY=your_secret_key
 DEBUG=False
 ALLOWED_HOSTS=127.0.0.1,localhost
 If you need to run migrations manually:

```bash
docker exec -it <container_name> python manage.py migrate
```

---

## 4. Documentation

- Project and code documentation is provided inside this README.md.

- Language: English (as required by checklist).

---

## 5. Security Notes

- No passwords, tokens, or sensitive data are stored in the repository.

- Use .env file for environment variables.

- No SSH keys or secrets included.

---

## 6. Code Conventions

- Environment variables use UPPER_CASE_WITH_UNDERSCORE
  Example: SECRET_KEY, DEBUG, ALLOWED_HOSTS

- Always reference variables with ${VAR_NAME} (not $VAR_NAME) to avoid errors.

- Provide default values only if they make sense (never for secrets).

- Sensitive configs (tokens, passwords) are only stored in .env, never in the codebase.

---

## 7. Testing

Before submission, ensure:

- The app runs locally before containerization.

- The Docker container builds successfully.

- The app is reachable at:

http://<server-ip>:8000

Example:
http://123.234.34.45:8000

---
