# Use a lightweight Python base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the entire project (including app.py) into the container
COPY . /app

# Set the default command to run Flask
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
