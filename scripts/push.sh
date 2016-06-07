#!/usr/bin/env bash

. ../wundertools/bootstrap.inc bootstrap

echo "--> pushing source image: ${BUILD_IMAGE_ROOT}-source:${BUILD_VERSION}"
docker push "${BUILD_IMAGE_ROOT}-source:${BUILD_VERSION}"

echo "--> pushing assets image: ${BUILD_IMAGE_ROOT}-assets:${BUILD_VERSION}"
docker push "${BUILD_IMAGE_ROOT}-assets:${BUILD_VERSION}"

echo "--> pushing db image: ${BUILD_IMAGE_ROOT}-db:${DB_VERSION}"
docker push "${BUILD_IMAGE_ROOT}-db:${DB_VERSION}"
