FROM ubuntu:latest

RUN apt-get update && apt-get -y --no-install-recommends install nodejs git npm

RUN addgroup --gid 1000 node && adduser --uid 1000 --gid 1000 --shell /bin/bash --disabled-password --gecos "" node 

COPY init.sh init.sh

RUN chmod 700 init.sh && chown node:node init.sh

USER node

WORKDIR /home/node

EXPOSE 8081

ENTRYPOINT ["/bin/bash", "-c", "exec /home/node/init.sh "]