FROM node:16

RUN npm i --location=global @vue/cli

RUN cd src
RUN npm i

USER node