# Use a Node.js base image
FROM node:18-alpine

WORKDIR /app

# Copy package.json and package-lock.json (optional)
COPY package*.json ./

# Copy the node_modules folder from your local machine to the container
# Make sure node_modules is available before this step
COPY node_modules ./node_modules

# Copy the rest of the application files
COPY . .

# Expose the port for Vite
EXPOSE 4173

# Set the command to run the app in preview mode using Vite
CMD ["npx", "vite", "preview", "--port", "4173"]
