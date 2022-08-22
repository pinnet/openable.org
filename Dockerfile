FROM ubuntu:latest

RUN apt update && apt --no-install-recommends install node git npm

WORKDIR /home/node

COPY init.sh init.sh

RUN chmod 700 init.sh

EXPOSE 8081

ENTRYPOINT ["/bin/bash", "-c", "exec /home/node/init.sh "]