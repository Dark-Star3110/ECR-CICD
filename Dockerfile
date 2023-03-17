FROM node:18-alpine

WORKDIR /app

COPY . .

RUN yarn install && yarn add -g pm2

CMD ["pm2-runtime", "ecosystem.config.js"]
