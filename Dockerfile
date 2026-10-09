FROM node:26-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev
COPY . .
RUN mkdir -p /data && chown node:node /data
EXPOSE 3000
USER node
CMD ["node", "server.js"]
