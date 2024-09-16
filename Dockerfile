# Use an official Node.js image as the base image
FROM node:22-alpine

# Set the working directory inside the container
WORKDIR /app


# Copy package.json and package-lock.json files into the working directory
COPY package.json package.json
COPY package-lock.json package-lock.json

# Debugging step: List contents after copying package files



# Copy the rest of the project files into the working directory
COPY . .

# Build the React app for production
RUN npm run build

# Expose the port the app will run on
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
