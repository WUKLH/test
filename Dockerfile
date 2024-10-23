FROM node:lts-bullseye

WORKDIR /home/node/app

COPY package*.json ./ 
RUN chown -R node:node /home/node/app

USER node 

RUN npm install

EXPOSE 8080

CMD [ "node" , "app.js" ]
