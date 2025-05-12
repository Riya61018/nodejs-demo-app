# Use an official Node.js image
FROM node:16

# Set working directory inside the container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy all other project files
COPY . .

# Build the app
RUN npm run build

# Start the app
CMD ["npm", "start"]
