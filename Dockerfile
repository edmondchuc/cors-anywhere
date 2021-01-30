FROM node:10-alpine

RUN apk add --no-cache git
RUN git clone https://github.com/Rob--W/cors-anywhere.git

WORKDIR cors-anywhere

RUN npm install

EXPOSE 8080

CMD node server.js
