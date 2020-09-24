FROM node:lts-slim

ENV NODE_ENV=production

WORKDIR /opt/k3s-mongo-sidecar

COPY package.json package-lock.json /opt/k3s-mongo-sidecar/

RUN npm install

COPY ./src /opt/k3s-mongo-sidecar/src

CMD ["npm", "start"]
