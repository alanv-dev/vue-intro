FROM node:16

WORKDIR /srv

COPY src/package.json .
COPY src/package-lock.json .

RUN npm i --location=global npm@latest
RUN npm i

USER node

CMD ["npm", "run", "serve"]