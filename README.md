# 🐍 Python Hello World using Docker & Docker Compose

![Python](https://img.shields.io/badge/Python-3.12-blue)
![Docker](https://img.shields.io/badge/Docker-Enabled-blue)
![Docker%20Compose](https://img.shields.io/badge/Docker%20Compose-v2-blue)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

This repository demonstrates a **simple Python “Hello World” application** running inside a Docker container and managed using **Docker Compose**.  
It is intended for beginners who want to understand containerization basics.

---

## 📁 Project Structure

```text
.
├── app.py
├── Dockerfile
├── docker-compose.yml
└── README.md
```

---

## 🧾 Application Overview

The application is a minimal Python script that prints a message to the console.  
Docker packages the Python runtime and application code together so the app runs consistently across environments without requiring Python to be installed locally.

---

## 🧾 Application Code (`app.py`)

```python
print("Hello, World from Docker!")
```

---

## 🐳 Dockerfile

The Dockerfile defines how the Python application image is built.

```dockerfile
FROM python:3.12-slim

WORKDIR /app

COPY app.py .

CMD ["python", "app.py"]
```

---

## 🧩 Docker Compose File (`docker-compose.yml`)

Docker Compose simplifies building and running the container using a single command.

```yaml
version: "3.9"

services:
  app:
    build: .
    container_name: python_hello_app
```

---

## ▶️ How to Run the Application

### Build and start the container

```bash
docker compose up
```

Expected output:

```text
Hello, World from Docker!
```

---

### Stop and remove the container

```bash
docker compose down
```

---

### Rebuild the image (after code changes)

```bash
docker compose up --build
```

---

## 🧠 Key Concepts Demonstrated

- Basic Python application
- Dockerfile for Python apps
- Docker Compose for container orchestration
- Reproducible development environment
- No local Python installation required

---

## 📌 Requirements

- Docker Desktop (with Docker Compose)
- Windows, macOS, or Linux

---

## 📄 License

This project is provided for learning and demonstration purposes.
