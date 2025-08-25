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
---

##Usage

Once the container is running:

Application is available at:

```
http://localhost:8000
```

Django admin is available at:

```
http://localhost:8000/admin
```

You can log in with the superuser credentials (if created).

When the container starts, the entrypoint.sh script runs automatically.
This script performs the following steps:

- Applies database migrations (python manage.py migrate)

- Collects static files (python manage.py collectstatic --noinput)

- Starts the Django development server (python manage.py runserver 0.0.0.0:8000)

So you don’t need to run these commands manually – everything is handled inside the container.
---

##Docker

- Base image: python:3.10-slim
- Exposed port: 8000
- Dependencies installed automatically from requirements.txt
- Container runs Django development server on startup

---
##Project Structure
```
baby-tools-shop/
│
├─ babyshop_app/
│   ├─ babyshop/
│   │   ├─ asgi.py 
│   │   ├─ __init__.py
│   │   ├─ __pycache__/
│   │   │   ├─ __init__.cpython-310.pyc
│   │   │   ├─ settings.cpython-310.pyc
│   │   │   ├─ urls.cpython-310.pyc
│   │   │   ├─ wsgi.cpython-310.pyc
│   │   │   ├─ __init__.cpython-312.pyc
│   │   │   ├─ settings.cpython-312.pyc
│   │   │   ├─ urls.cpython-312.pyc
│   │   │   └─ wsgi.cpython-312.pyc
│   │   ├─ settings.py
│   │   ├─ urls.py
│   │   └─ wsgi.py
│   ├─ db.sqlite3
│   ├─ manage.py
│   ├─ media/
│   │   └─ products/
│   │       └─ 2025/
│   │           └─ 08/
│   │               └─ 19/
│   │                   ├─ Animal_Print_Onesie.jpg
│   │                   ├─ Classic_Baby_Bottle.jpg
│   │                   ├─ Sensitive_Skin_Wipes.jpg
│   │                   ├─ Stacking_Blocks.jpg
│   │                   ├─ Anti-Colic_Bottle.jpg
│   │                   ├─ Newborn_Diapers.jpg
│   │                   ├─ Silicone_Nipple_Set.jpg
│   │                   ├─ Striped_Baby_Onesie.jpg
│   │                   ├─ Baby_feeding_Spoon.jpg
│   │                   ├─ Plush_Teddy_Bear.jpg
│   │                   ├─ Sleeveless_Onesie.jpg
│   │                   ├─ Teething_Ring.jpg
│   │                   ├─ Baby_Wipes.jpg
│   │                   ├─ Rattle_Set.jpg
│   │                   ├─ Soft_Cotton_Onesie.jpg
│   │                   └─ Toddler_Diapers.jpg
│   ├─ products/
│   │   ├─ admin.py
│   │   ├─ apps.py
│   │   ├─ __init__.py
│   │   ├─ migrations/
│   │   │   ├─0001_initial.py
│   │   │   ├─0003_alter_product_name.py
│   │   │   ├─0005_rename_describtion_product_description.py
│   │   │   ├─__pycache__/
│   │   │   │  ├─0001_initial.cpython-310.pyc
│   │   │   │  ├─0004_category_product_category.cpython-310.pyc
│   │   │   │  ├─0001_initial.cpython-312.pyc
│   │   │   │  ├─0004_category_product_category.cpython-312.pyc
│   │   │   │  ├─0002_product_price.cpython-310.pyc
│   │   │   │  ├─0005_rename_describtion_product_description.cpython-310.pyc
│   │   │   │  ├─0002_product_price.cpython-312.pyc
│   │   │   │  ├─0005_rename_describtion_product_description.cpython-312.pyc
│   │   │   │  ├─0003_alter_product_name.cpython-310.pyc
│   │   │   │  ├─__init__.cpython-310.pyc
│   │   │   │  ├─0003_alter_product_name.cpython-312.pyc
│   │   │   │  └─__init__.cpython-312.pyc
│   │   │   ├─0002_product_price.py
│   │   │   ├─0004_category_product_category.py
│   │   │   └─__init__.py
│   │   ├─ models.py
│   │   ├─ __pycache__/
│   │   │   ├─ admin.cpython-310.pyc
│   │   │   ├─ apps.cpython-312.pyc
│   │   │   ├─ models.cpython-310.pyc
│   │   │   ├─ urls.cpython-312.pyc
│   │   │   ├─ admin.cpython-312.pyc
│   │   │   ├─ __init__.cpython-310.pyc
│   │   │   ├─ models.cpython-312.pyc
│   │   │   ├─ views.cpython-310.pyc
│   │   │   ├─ apps.cpython-310.pyc
│   │   │   ├─ __init__.cpython-312.pyc
│   │   │   ├─ urls.cpython-310.pyc
│   │   │   └─ views.cpython-312.pyc
│   │   ├─ tests.py
│   │   ├─ urls.py
│   │   └─ views.py
│   │
│   ├─ templates/
│   │   ├─ login.html
│   │   ├─ partoftemp/
│   │   │   ├─ _dashboard.html 
│   │   │   └─ footer.html
│   │   ├─ product.html
│   │   ├─ products.html
│   │   └─ register.html
│   └─ users/
│       ├─ admin.py
│       ├─ apps.py
│       ├─ forms.py
│       ├─ __init__.py
│       ├─ migrations/
│       │   ├─ __init__.py
│       │   └─ __pycache__/
│       │       ├─ __init__.cpython-310.pyc 
│       │       └─ __init__.cpython-312.pyc
│       ├─ models.py
│       ├─ __pycache__/
│       │   ├─ admin.cpython-310.pyc
│       │   ├─ apps.cpython-312.pyc
│       │   ├─ __init__.cpython-310.pyc
│       │   ├─ models.cpython-312.pyc
│       │   ├─ views.cpython-310.pyc
│       │   ├─ admin.cpython-312.pyc
│       │   ├─ forms.cpython-310.pyc
│       │   ├─ __init__.cpython-312.pyc
│       │   ├─ urls.cpython-310.pyc
│       │   ├─ views.cpython-312.pyc
│       │   ├─ apps.cpython-310.pyc
│       │   ├─ forms.cpython-312.pyc
│       │   ├─ models.cpython-310.pyc
│       │   └─ urls.cpython-312.pyc
│       ├─ tests.py
│       ├─ urls.py
│       └─ views.py
├─ Dockerfile
├─ entrypoint.sh
├─ LICENSE
├─ project_images/
│   ├─ 'Animal Print Onesie.jpg'
│   ├─capture_20220323080934541.jpg
│   ├─'Onesite1 - Copy.jpg:Zone.Identifier'
│   ├─'Sleeveless Onesie.jpg'
│   ├─'Anti-Colic Bottle.jpg'
│   ├─ capture_20220323080953570.jpg
│   ├─ Onesite1.jpg
│   ├─ 'Soft Cotton Onesie.jpg'
│   ├─ 'Baby feeding Spoon.jpg'
│   ├─ capture_20220323081016022.jpg
│   ├─ 'Plush Teddy Bear.jpg'
│   ├─ 'Stacking Blocks.jpg'
│   ├─ 'Baby Wipes.jpg'
│   ├─ capture_20220323081044867.jpg
│   ├─ 'Rattle Set.jpg'
│   ├─ 'Striped Baby Onesie.jpg'
│   ├─ capture_20220323080815407.jpg
│   ├─ 'Classic Baby Bottle.jpg'
│   ├─ 'Sensitive Skin Wipes.jpg'
│   ├─ 'Teething Ring.jpg'
│   ├─ capture_20220323080840305.jpg
│   ├─'Newborn Diapers.jpg'
│   ├─'Silicone Nipple Set.jpg'
│   └─'Toddler Diapers.jpg' 
├─ README.md
├─ requirements.txt
├─ venv/
│    ├─ bin/
│    ├─ include/
│    ├─ lib/
│    ├─ lib64/
│    └─ pyvenv.cfg
├─ .env
├─ .env.example
└─ .gitignore
```
---
##Contributing

- Fork the repository and create a branch for new features or bug fixes.
- Follow standard Django and Python conventions.
- Ensure Docker builds and runs properly after changes.
- Do not commit sensitive information to GitHub.

---
##License

This project is licensed under the MIT License.
