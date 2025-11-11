# Dockerfile untuk backend (jika mau run di Docker)

FROM node:18-alpine

WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install --production

# Copy application
COPY server.js ./
COPY public ./public

# Create data directory
RUN mkdir -p /root/mcbedrock-server

# Environment variables with default values
ENV PORT=3001
ENV DATA_DIR=/root/mcbedrock-server
ENV LOGIN_PASSWORD=minecraft123
ENV MAX_LOGIN_ATTEMPTS=5
ENV LOGIN_LOCKOUT_MINUTES=5

EXPOSE 3001

CMD ["node", "server.js"]