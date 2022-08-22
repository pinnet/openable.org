FROM node:18-alpine3.15

USER root

RUN apk add git

WORKDIR /home/node

COPY init.sh /root/init.sh

RUN chmod 700 /root/init.sh

EXPOSE 8081

ENTRYPOINT ["/bin/sh", "-c", "exec /root/init.sh "]

