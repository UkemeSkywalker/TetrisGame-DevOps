# Use the slim variant of the Python 3.9 image
FROM python:3

# Install system dependencies
RUN apt-get update && apt-get install -y libglib2.0-dev


# Set the working directory in the container
WORKDIR /app

# Copy the game source code to the container
COPY tetris_game.py /app
COPY tetris_model.py /app
COPY tetris_ai.py /app

# Install the required dependencies
RUN pip install PyQt5 NumPy

# Set the entry point command
CMD ["python", "tetris_game.py"]
