FROM node:18-alpine3.15

RUN apk add git

WORKDIR /home/node

COPY init.sh init.sh

RUN chmod 700 init.sh

EXPOSE 8081

ENTRYPOINT ["/bin/sh", "-c", "exec /home/node/init.sh "]