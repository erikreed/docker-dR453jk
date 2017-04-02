FROM node:5.11.0

RUN apt-get update && apt-get install -y rsync
RUN mkdir -p /build

WORKDIR /build
ADD package.json .

RUN npm install -g grunt 
RUN npm install .

