FROM node:14-alpine

WORKDIR /app/

COPY package*.json ./

ENV NODE_ENV=production DB_HOST=item-db


COPY . .

RUN npm install --production --unsafe-perm && npm run build


EXPOSE 8080

CMD ["npm", "start"]