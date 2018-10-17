# base image
FROM node:9.6.1-alpine

# set working directory
WORKDIR /usr/src/app

# install and cache app dependencies
COPY package*.json ./
ADD package.json /usr/src/app/package.json

RUN npm install

# add app
COPY . .

# start app
# CMD ["npm", "start"]
CMD ng build --base-href /user2/ && node ./bin/www
