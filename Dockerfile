FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Run WebSocket setup
RUN npm run setup

# Build CSS
RUN npm run build:css:prod

# Copy assets
RUN npm run copy-assets

# Create temp directories
RUN mkdir -p temp/addon-uploads temp/uploads

# Expose port
EXPOSE 3001

# Set environment variables
ENV DATA_DIR=/app/minecraft-data

# Run the application
CMD ["node", "server.js"]