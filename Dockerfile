# Use an official Node.js runtime as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port your server listens on
EXPOSE 8000

# Define the command to run the app
CMD ["node", "c++_receiver.js"]

