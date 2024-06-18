# Use the official Node.js image.
# https://hub.docker.com/_/node
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the Strapi app code
COPY . .

# Build the admin panel
RUN npm run build

# Expose the Strapi port
EXPOSE 1337

# Start the Strapi server
CMD ["npm", "start"]
