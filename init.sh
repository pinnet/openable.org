#!/bin/bash
BRANCH=${BRANCH:=""}
REPO_URL=${REPO_URL:='https://github.com/pinnet/openable.org.git'}
REPO_URL=${REPO_DIR:='/home/node/openable.org'}

echo "Setting up Repository -----------------------------------------------------"

cd /home/node/ 

if [ -d /root/${REPO_DIR} ]; then
    
    echo "Repository exists, checking if up to date"

    cd /root/${REPO_DIR}
    
    if git pull | grep -q "Already"; then
            echo "Repository is already up to date"
    fi
else
    cd /root 
    echo "cloning ${BRANCH} into ${REPO_DIR}"
    
    if [[ -z "${BRANCH}"]]; then
        git clone ${REPO_URL}
    else
        git clone -b ${BRANCH} ${REPO_URL}
    fi 
fi

cd openable.org/app

npm install

tail -f /home/node/init.sh