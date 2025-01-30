# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Build the project
RUN npm run build

# Expose the port Vite runs on
EXPOSE 5173

# Command to start the application
CMD ["npm", "run", "preview"]
