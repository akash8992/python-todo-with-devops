# Use a compatible Python version for Django 3.2
FROM python:3.9

# Install Django
RUN pip install django==3.2

# Copy the current directory contents into the container
COPY . .

# Run database migrations
RUN python manage.py migrate

# Expose the necessary port
EXPOSE 8000

# Start the Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
