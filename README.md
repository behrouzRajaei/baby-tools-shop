# Baby Tools Shop

## Table of Contents
1. [Project Description](#project-description)
2. [Quickstart](#quickstart)
3. [Usage](#usage)
4. [Docker](#docker)
5. [Project Structure](#project-structure)
6. [Contributing](#contributing)
7. [License](#license)

---

## Project Description
**Baby Tools Shop** is a Django-based e-commerce application for baby products.  
The project demonstrates a fully containerized Django application using Docker, including:

- Product management (products app)
- User authentication and management (users app)
- Media handling (images, uploads)
- SQLite database for development
- Ready for Docker deployment

This repository provides all necessary files to run the project locally or on a server.

---

## Quickstart

### Prerequisites
- [Docker](https://www.docker.com/) installed
- Optional: Python 3.10+ if running locally without Docker

### Steps

1. Clone the repository:

```bash
git clone <YOUR_REPO_URL>
cd baby-tools-shop
```
2. Build Docker image:

```bash
docker build -t babyshop-app .
```
3. Run Docker container:

```bash
docker run -it -p 8000:8000 babyshop-app
```
4. Open your browser and go to:

```bash
http://<server IP Address>:8000
```
5. (Optional) Run database migrations manually inside the container:

```bash
docker exec -it <container_name> python manage.py migrate
```
---

##Usage

- The main entry point is the Django admin and the shop interface.
- To create superuser for admin:

```bash
docker exec -it <container_name> python manage.py createsuperuser
```
- Media files are stored in media/.
- Static files can be collected manually:

```bash
docker exec -it <container_name> python manage.py collectstatic --noinput
```
- To stop the server: press CTRL+C inside the container or use docker stop <container_name>.
- Configuration files:
	- Django settings are in babyshop_app/babyshop/settings.py
	- Sensitive information like passwords or tokens should be stored in environment variables or a .env file.

---

##Docker

- Base image: python:3.10-slim
- Exposed port: 8000
- Dependencies installed automatically from requirements.txt
- Container runs Django development server on startup
- Migration is not automatic; run manually if needed

---
##Project Structure
baby-tools-shop/
│
├─ babyshop_app/
│   ├─ babyshop/
│   │   └─ settings.py
│   ├─ manage.py
│   ├─ products/
│   ├─ users/
│   ├─ media/
│   └─ templates/
│
├─ Dockerfile
├─ requirements.txt
├─ README.md
├─ .gitignore
└─ project_images/

---
##Contributing

- Fork the repository and create a branch for new features or bug fixes.
- Follow standard Django and Python conventions.
- Ensure Docker builds and runs properly after changes.
- Do not commit sensitive information to GitHub.

---
##License

This project is licensed under the MIT License.
