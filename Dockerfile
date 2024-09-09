FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Flask/Gunicorn will run on
EXPOSE 5000

# Run the app with Gunicorn (production-grade WSGI server)
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
