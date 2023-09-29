# specify a base image
FROM node:14-alpine

WORKDIR /user/app

# install some dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./
#default command
CMD ["npm" , "start"]