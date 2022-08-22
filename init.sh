#!/bin/sh

cd /home/node/

tail -f /home/node/init.sh

git clone https://github.com/pinnet/openable.org.git

cd openable.org/app

npm install