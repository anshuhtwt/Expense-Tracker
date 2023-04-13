# Use an official Node runtime as a parent image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the remaining app files to the container
COPY . .

# Build the React app
RUN npm run build

# Expose the port that the app will run on
EXPOSE 3000

# Define the command to run the app
CMD [ "npm", "start" ]

