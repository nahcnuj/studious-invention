#!/usr/bin/env bash

OPENAPI_SCHEMA_FILE=$1
WORKDIR_IN_DOCKER=/local
OUTPUT_DIR=${2#${WORKDIR_IN_DOCKER}/}

docker run --rm \
    -v "${PWD}/api:${WORKDIR_IN_DOCKER}/api" \
    -v "${PWD}/${OUTPUT_DIR}:${WORKDIR_IN_DOCKER}/${OUTPUT_DIR}" \
    -u `id -u`:`id -g` \
    -w ${WORKDIR_IN_DOCKER} \
    openapitools/openapi-generator-cli generate \
        --git-user-id nahcnuj --git-repo-id studious-invention \
        -i ${OPENAPI_SCHEMA_FILE} \
        -g go-server \
        -p sourceFolder=. \
        -o ${WORKDIR_IN_DOCKER}/${OUTPUT_DIR}

# avoid unused imports error
sed -i -e 's#\("encoding/json"\)#_\t\1#' ${OUTPUT_DIR}/api_default.go
sed -i -e 's#\("github.com/gorilla/mux"\)#_\t\1#' ${OUTPUT_DIR}/api_default.go

docker run --rm -v "${PWD}/${OUTPUT_DIR}:${WORKDIR_IN_DOCKER}/${OUTPUT_DIR}" -u `id -u`:`id -g` -w ${WORKDIR_IN_DOCKER} golang:1.17 gofmt -l -s -w .
