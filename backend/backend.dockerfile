FROM node:20

WORKDIR /app

COPY package*.json ./

RUN npm i

COPY prisma ./prisma

RUN npx prisma generate

COPY . .

EXPOSE 4000

CMD [ "node", "index.js" ]

