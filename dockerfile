# Use an official Python runtime as a base image
FROM python:3.11-slim

# Set working directory
WORKDIR /docs

# Install mkdocs
RUN pip install mkdocs mkdocs-material

# Copy your project files into the container
COPY . /docs

# Build the static site
RUN mkdocs build

# Set default command (optional, if you want to serve it)
CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]
