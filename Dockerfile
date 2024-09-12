# Use an official Python runtime as a parent image
FROM python:3.12.2


# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# ENV for DOckerfile prerequsite

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install any needed packages specified in requirements.txt
#RUN /usr/local/bin/python -m pip install --upgrade pip 
RUN pip install -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run app.py when the container launches
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

