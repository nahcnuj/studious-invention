#!/usr/bin/env bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
WORKDIR_IN_DOCKER=/app

if [ -z "$(docker image ls | grep 'ent')" ]; then
    docker build -f build/package/ent/Dockerfile -t ent:latest .
fi
${SCRIPT_DIR}/ent init $@
