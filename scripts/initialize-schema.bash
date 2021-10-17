#!/usr/bin/env bash

WORKDIR_IN_DOCKER=/app

if [ -z "$(docker image ls | grep 'ent')" ]; then
    docker build -f build/package/ent/Dockerfile -t ent:latest .
fi
docker run --rm -v "${PWD}:${WORKDIR_IN_DOCKER}" -u `id -u`:`id -g` -w ${WORKDIR_IN_DOCKER} ent init $@
