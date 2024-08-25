# Use a base image
FROM alpine:latest

# Set a working directory
WORKDIR /app

# Copy files
COPY . .

# Install any necessary packages
RUN apk add --no-cache bash

# Define the default command
CMD ["echo", "Hello, World!"]
