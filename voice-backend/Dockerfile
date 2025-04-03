# Use official Python 3.10 as base image
FROM python:3.10

# Install necessary system tools
RUN apt-get update && apt-get install -y ffmpeg git wget

# Set working directory
WORKDIR /app

# Clone RVC repository and install dependencies
RUN git clone https://github.com/RVC-Project/Retrieval-based-Voice-Conversion-WebUI.git /app/RVC
WORKDIR /app/RVC
RUN pip install --no-cache-dir -r requirements.txt

# Install FastAPI dependencies
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the server script
COPY server.py /app/

# Expose API port
EXPOSE 8000

# Run FastAPI server
CMD ["uvicorn", "server:app", "--host", "0.0.0.0", "--port", "8000"]
