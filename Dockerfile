FROM python:3.9-slim

WORKDIR /app

# Copy the requirements.txt file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the entire project to the container
COPY . .

# Run migrations and start the development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
