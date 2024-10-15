FROM node:lts-bullseye

WORKDIR /home/node/app

COPY package*.json ./ 

USER node 

RUN npm install

EXPOSE 8080

CMD [ "node" , "app.js" ]