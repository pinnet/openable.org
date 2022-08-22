FROM node:18-alpine3.15

USER root

RUN apk add git

WORKDIR /home/node

COPY init.sh .

RUN chmod 700 init.sh

EXPOSE 8081

CMD ["/bin/sh", "-c init.sh"]
