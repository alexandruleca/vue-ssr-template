FROM node:18.3-alpine

RUN apk update \
    && apk add g++ make py3-pip \
    && apk --no-cache --update add build-base

WORKDIR /web-app

COPY . .

RUN yarn install
RUN yarn build

CMD ["yarn", "start"]
EXPOSE 3000