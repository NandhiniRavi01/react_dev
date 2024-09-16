# Use an official Node.js image as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /react

# Copy package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the project files into the container
COPY . .

# Build the React app for production
RUN npm run build

# Expose the port the app will run on
EXPOSE 3000

# Command to run the React app
CMD ["npm", "start"]
