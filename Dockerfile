FROM ubuntu:latest

RUN apt-get update && apt-get -y --no-install-recommends install nodejs git npm

WORKDIR /home/node

COPY init.sh init.sh

RUN chmod 700 init.sh

EXPOSE 8081

ENTRYPOINT ["/bin/bash", "-c", "exec /home/node/init.sh "]