FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

# force bower command
RUN node_modules/.bin/bower install --allow-root

VOLUME /usr/src/app

EXPOSE 8080
CMD [ "npm", "start" ]