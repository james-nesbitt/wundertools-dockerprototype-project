#!/usr/bin/env bash

. ../wundertools/bootstrap.inc bootstrap

PATH_ASSETS="$(cd "${PATH_APP}" && cd "${SUBPATH_APP_ASSETS}" && pwd)"

echo "-== STARTING PROJECT UPDATE ==-"

echo "--> using composer to build the application"
cd ${PROJECT_SOURCE} && wundertools composer --pwd update

echo "--> Building source image"
docker build --tag="${BUILD_IMAGE_ROOT}-source:${IMAGE_VERSION}" "${PATH_SOURCE}"

echo "--> Building assets image"
docker build --tag="${BUILD_IMAGE_ROOT}-assets:${IMAGE_VERSION}" "${PATH_ASSETS}"
