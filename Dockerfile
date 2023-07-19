# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json (if available)
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle the app source code inside the Docker image
COPY . .

# Expose the port the app listens on
EXPOSE 3000

# Start the Node.js application
CMD [ "node", "app.js" ]

