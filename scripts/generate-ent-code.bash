#!/usr/bin/env bash

WORKDIR_IN_DOCKER=/app

if [ -z "$(docker image ls | grep 'ent')" ]; then
    docker build -f build/package/ent/Dockerfile -t ent:latest .
fi
docker run --rm -e XDG_CACHE_HOME=/tmp/.cache -v "${PWD}:${WORKDIR_IN_DOCKER}" -u `id -u`:`id -g` -w ${WORKDIR_IN_DOCKER} --entrypoint go ent generate ./ent
