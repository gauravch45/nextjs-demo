#Building application
FROM node:20-slim

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build --omit=dev

EXPOSE 3000

CMD [ "npm","start" ]
