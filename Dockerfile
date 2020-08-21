
FROM node:carbon

RUN mkdir -p /app

WORKDIR /app
COPY . /app
RUN npm install
RUN ls -al





