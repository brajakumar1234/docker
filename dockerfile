# Use an official Node.js runtime as a parent image
FROM node:12

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in package.json
RUN npm install

# Make port 3000 available to the world outside this container
EXPOSE 30

# Define environment variable
ENV NAME World

# Run app.js when the container launches
CMD ["node", "index.js"]
