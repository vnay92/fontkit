FROM node:8-alpine

RUN apk add --no-cache --virtual .build-deps alpine-sdk python \
    && npm install --production --silent \
    && apk del .build-deps

WORKDIR /app

COPY . .

RUN npm install
