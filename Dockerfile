From node
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
# install gulp globally so you can run it from the command line
RUN npm install -g gulp-cli
RUN npm install
# Bundle app source
COPY . /usr/src/app
EXPOSE 8080
CMD [ "gulp" ]
