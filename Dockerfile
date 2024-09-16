# Use an official Node.js runtime as a parent image
FROM node:18-slim

# Set the working directory
WORKDIR /node

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["node", "start"]
