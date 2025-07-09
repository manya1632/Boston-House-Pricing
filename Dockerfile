# Use a Python base image
FROM python:3.9-slim

# Set working directory in container
WORKDIR /app

# Copy contents into container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port (used by gunicorn/flask)
EXPOSE 8080

# Run the application using gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]
