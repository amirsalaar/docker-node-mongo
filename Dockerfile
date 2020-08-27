FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

# After installing npm packages we want to copy all the source files
COPY . .

EXPOSE 3000

# Running npm start command
CMD [ "npm", "start" ]
