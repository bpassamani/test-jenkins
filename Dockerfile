FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the Python script
COPY app.py .

# Expose the port
EXPOSE 8000

# Start the HTTP server
CMD ["python", "app.py"]
