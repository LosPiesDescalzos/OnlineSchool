FROM node:18.14.2

WORKDIR /app
COPY package*.json .
RUN npm install

COPY . .
RUN npm run build

ENTRYPOINT ["/bin/bash", "boot.sh"]
