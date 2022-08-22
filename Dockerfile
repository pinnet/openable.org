FROM node:18-alpine3.15

RUN apk add git

WORKDIR /home/node

RUN git clone https://github.com/pinnet/openable.org.git && cd ./openable.org/app && npm init

EXPOSE 8081

ENTRYPOINT ["npm start"]

