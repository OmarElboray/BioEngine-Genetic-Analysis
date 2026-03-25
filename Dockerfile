# Use an official, lightweight Python image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file first to cache dependencies
COPY backend/requirements.txt .

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy your backend and frontend folders into the container
COPY backend/ ./backend/
COPY frontend/ ./frontend/

# Set the port environment variable required by Cloud Run
ENV PORT=8080
EXPOSE 8080

# Start the FastAPI server
CMD ["uvicorn", "backend.agent:app", "--host", "0.0.0.0", "--port", "8080"]