FROM node:18-alpine

WORKDIR /app

# Copy only dependency files
COPY package*.json ./

# Install only production dependencies
RUN npm install --omit=dev

# Copy only necessary source files
COPY src ./src

# App port (match your server.js!)
EXPOSE 5000

ENV PORT=5000

CMD ["npm", "start"]