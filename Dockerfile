FROM node:latest

RUN mkdir parse

ADD . /parse
WORKDIR /parse


RUN mkdir certificate
RUN mkdir cloud
ADD $CERTIFICATE_URI /certificate
ADD $CLOUD_CODE_FILE /cloud/main.js

RUN npm install
EXPOSE 1337

CMD [ "npm", "start" ]
