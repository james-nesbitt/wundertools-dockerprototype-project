#!/usr/bin/env bash

. ../wundertools/bootstrap.inc bootstrap

echo "--> Committing DB container to image"
docker commit "${PROJECT}_db_1" "${BUILD_IMAGE_ROOT}-db:${DB_VERSION}"