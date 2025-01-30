# Use a Node.js base image
FROM node:18-alpine AS builder

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to leverage Docker's caching
COPY package*.json ./

# Install dependencies (npm install)
RUN npm install

# Copy the rest of the application files
COPY . .

# Run the build script
RUN npm run build

# Optionally, you can expose a port if you want to serve the built app
EXPOSE 4173

# The build step is now complete, the image only contains the build output
