# Base image
FROM python:3.10-slim

# Env vars
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set working directory to root inside container
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    gcc python3-dev musl-dev libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project
COPY . .

# Expose port
EXPOSE 8000

# Entrypoint
ENTRYPOINT ["./entrypoint.sh"]

