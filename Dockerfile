# Use the official Node.js image (v18.12.0 LTS)
FROM node:18.12.0

# Set working directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source code
COPY . .

# Expose port 3000
EXPOSE 5002

# Start the Node.js app
CMD ["npm", "run","dev"]
