#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-bitmonixpay/bitmonixd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/bitmonixd docker/bin/
cp $BUILD_DIR/src/bitmonix-cli docker/bin/
cp $BUILD_DIR/src/bitmonix-tx docker/bin/
strip docker/bin/bitmonixd
strip docker/bin/bitmonix-cli
strip docker/bin/bitmonix-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
