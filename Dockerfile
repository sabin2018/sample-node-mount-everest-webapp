# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy all the files to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 80

# Define environment variable
ENV NODE_ENV=production

# Command to run the application
CMD ["node", "app.js"]
