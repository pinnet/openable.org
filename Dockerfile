FROM node:18-alpine3.16

RUN apk add git bash

RUN echo "nameserver 8.8.8.8" > /etc/resolv.conf

WORKDIR /home/node

COPY init.sh init.sh

RUN chmod 700 init.sh

EXPOSE 8081

ENTRYPOINT ["/bin/bash", "-c", "exec /home/node/init.sh "]