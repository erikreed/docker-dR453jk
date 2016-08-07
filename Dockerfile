FROM node:5.11.0

RUN apt-get update && apt-get install -y rsync
RUN mkdir -p /build

WORKDIR /build
ADD bower.json .
ADD package.json .

RUN npm install -g grunt bower grunt-cli

RUN npm install .
RUN bower install --allow-root

