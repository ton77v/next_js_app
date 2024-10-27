ARG NODE_VERSION=20

FROM node:${NODE_VERSION} AS builder

ARG NODE_VERSION

RUN echo "NODE_VERSION: ${NODE_VERSION}"

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build

EXPOSE 3000

CMD [ "npm", "run", "start" ]
