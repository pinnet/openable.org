FROM node:18-alpine3.16

RUN apk add git bind-tools

WORKDIR /home/node

COPY init.sh init.sh

RUN chmod 700 init.sh

EXPOSE 8081

ENTRYPOINT ["/bin/sh", "-c", "exec /home/node/init.sh "]