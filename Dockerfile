# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY hello.js /usr/src/app

# Install app dependencies
RUN npm install express

# Copy app source code
COPY . .

# Expose port 8080 for the application
EXPOSE 3000

# Start the Node.js application
CMD [ "node", "hello.js" ]
