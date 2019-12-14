FROM node:10
COPY package*.json ./
RUN npm ci --only=production
COPY . .
EXPOSE 3010
CMD ["node", "server/server.js"]