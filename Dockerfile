# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Poetry
RUN pip install poetry

# Install dependencies
RUN poetry install

# Run the application
CMD ["poetry", "run", "python", "vacant_room_finder/VacantRoomFinder.py"]