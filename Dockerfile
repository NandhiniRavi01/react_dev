# Use an official Node.js image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Debugging step: List contents before copying files
RUN echo "Contents before copying files:" && ls -la /app

# Copy package.json and package-lock.json files into the working directory
COPY package*.json ./

# Debugging step: List contents after copying package files
RUN echo "Contents after copying package.json:" && ls -la /app

# Install project dependencies
RUN npm install

# Copy the rest of the project files into the working directory
COPY . .

# Build the React app for production
RUN npm run build

# Expose the port the app will run on
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
