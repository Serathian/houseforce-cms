# Use Node.js LTS as base image
FROM node:lts as builder

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if exists) into the container
COPY package*.json .

# Install dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Build the SvelteKit application for production
RUN npm run build

FROM node:lts AS deployer

COPY --from=builder /app/build build/
COPY --from=builder /app/package.json .
COPY --from=builder /app/node_modules ./node_modules

EXPOSE 3000

ENV NODE_ENV=production 
    
CMD ["node", "build"]
