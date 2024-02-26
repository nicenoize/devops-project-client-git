FROM node:alpine as todo-app-build

WORKDIR /client

COPY package.json yarn.lock README.md ./

RUN yarn

COPY ./public ./public

COPY ./src ./src

ENV REACT_APP_baseAPIURL=http://34.118.75.172:3000

RUN yarn build

FROM nginx:latest

LABEL maintainer=Aamir-Pinger

COPY --from=todo-app-build /client/build/ /usr/share/nginx/html

EXPOSE 80
