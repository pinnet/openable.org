#!/bin/bash
BRANCH=${BRANCH:=""}
REPO_URL=${REPO_URL:='https://github.com/pinnet/openable.org.git'}
WORK_DIR=${WORK_DIR:='/home/node/'}
REPO_DIR=${REPO_DIR:=${WORK_DIR}'openable.org'}

echo expose ${PORT}
echo work-dir=${WORK_DIR}
echo repo-dir=${REPO_DIR}

cd ${WORK_DIR}
echo "Setting up Repository -----------------------------------------------------"
if [ -d ${REPO_DIR} ]; then
    
    echo "Repository exists, checking if up to date"

    cd ${REPO_DIR}
    
    if git pull | grep -q "Already"; then
            echo "Repository is already up to date" 
    fi
else
    cd ${WORK_DIR} 
    echo "cloning ${BRANCH} into ${REPO_DIR}"
    
    if [[ -z "${BRANCH}" ]]; then
        git clone ${REPO_URL}
    else
        git clone -b ${BRANCH} ${REPO_URL}
    fi 
fi
cd ${REPO_DIR}/app
npm install

cd ${REPO_DIR}/app
npm start
