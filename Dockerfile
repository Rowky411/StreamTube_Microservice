# Use the official Python image from the Docker Hub
FROM python:3.12.3

# Set environment variables to prevent Python from buffering stdout and stdin
ENV PYTHONUNBUFFERED=1

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt /app/

# Install dependencies
RUN pip install -r requirements.txt

# Copy the entire project to the working directory
COPY . /app/

# Expose the port on which Django will run
EXPOSE 8080

# Command to run the Django development server
CMD ["python", "manage.py", "runserver"]
