
FROM node:carbon

RUN mkdir -p /app

WORKDIR /app
COPY --chown=node:node . .

RUN npm install
VOLUME /app
VOLUME /app/node_modules
RUN ls -al