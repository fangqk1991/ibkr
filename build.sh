#!/bin/bash

set -e
set -v on

__DIR__=`cd "$(dirname "$0")"; pwd`
cd "${__DIR__}"

imageName=fangqk1991/ibkr
containerName=my-ibkr

docker build -t ${imageName} -f "${__DIR__}/Dockerfile" .

docker container stop ${containerName} || true
docker container rm ${containerName} || true

docker run --name ${containerName} -d \
  -p 5001:5000 \
  ${imageName}
