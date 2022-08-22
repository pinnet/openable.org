FROM node:18-alpine3.15

USER root

RUN apk add git

WORKDIR /home/node

COPY init.sh /bin/init.sh

RUN chmod 700 /bin/init.sh

EXPOSE 8081

ENTRYPOINT ["init.sh"]

