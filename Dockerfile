FROM node:8-alpine

WORKDIR /app

ADD ./package.json /app/package.json

RUN npm install

EXPOSE 9229
EXPOSE 3000

ADD ./src /app/src

CMD ["npm", "start"]