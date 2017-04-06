FROM node:6.10.2

RUN apt-get update && apt-get install -y rsync
RUN mkdir -p /build

WORKDIR /build
ADD package.json .

RUN npm install -g grunt 
RUN npm install .

