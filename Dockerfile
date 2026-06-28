FROM python:3.12-slim

WORKDIR /app

COPY app ./app

EXPOSE 8000

# 1. Create a dedicated system user and group (e.g., 'appuser')
RUN useradd --create-home --shell /bin/bash appuser

# 2. Tell Docker to switch away from root and execute as this user
USER appuser

CMD ["python", "app/app.py"]
