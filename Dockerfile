FROM node:8-alpine

WORKDIR /app

ADD ./package.json /app/package.json

RUN npm install

EXPOSE 9229

ADD ./src /app/src

CMD ["npm", "start"]