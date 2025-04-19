# Use official Python image as base
FROM python:3.9-slim

# Install Jupyter Lab and dependencies - we only need numpy
RUN pip install jupyterlab numpy

# Set up the working directory
WORKDIR /app

# Copy the notebook files to the container
COPY . /app

# Expose the port that Jupyter Lab will run on
EXPOSE 8888

# Run Jupyter Lab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root"]
