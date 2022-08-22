#!/bin/sh

dig github.com

cd /home/node/

git clone https://github.com/pinnet/openable.org.git

cd openable.org/app

npm install

tail -f /home/node/init.sh