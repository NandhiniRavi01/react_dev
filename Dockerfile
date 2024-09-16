# Set the working directory
WORKDIR /app

# Copy the package.json from the react-app folder
COPY react-app/package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the project files
COPY react-app/ ./
