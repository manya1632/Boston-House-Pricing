# Use a Python base image
FROM python:3.9-slim

# Set working directory in container
WORKDIR /app

# Copy contents into container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port (used by gunicorn/flask)
EXPOSE 8000

# Run the application using gunicorn
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app