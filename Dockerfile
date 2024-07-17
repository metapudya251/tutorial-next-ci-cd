# stage 1: build form official docker hub noce.js image
FROM node:lts-alpine as build

#set the working directory
WORKDIR /app

#COPY the package.json 
COPY package*.json ./

#Install the dependencies
RUN npm Install

#COPY the rest of the application code
COPY . .

#Start App
EXPOSE 3000
CMD [ "npm", "run","dev" ]