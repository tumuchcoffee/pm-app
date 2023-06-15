# Base image
FROM node:14-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire app directory to the working directory
COPY . .

# Build the React app
RUN npm run build

# Expose port 3000 (assuming your React app runs on this port)
EXPOSE 3000

# Define the command to run the app when the container starts
CMD ["npm", "start"]