#!/usr/bin/env bash

PROJECT="wkfi"
OFFICE="fi"

VERSION="master"
DB_VERSION="0.2"

SUBPATH_APP_SOURCE="project/source"
SUBPATH_APP_ASSETS="project/assets"
SUBPATH_APP_SETTINGS="project/settings"
SUBPATH_APP_BUILDS="project/builds"

CONTAINER_PATH_SOURCE="/app/web"

BUILD_IMAGE_REPO="quay.io/wunder"
BUILD_IMAGE_ROOT="${BUILD_IMAGE_REPO}/client-${OFFICE}-${PROJECT}"
BUILD_VERSION="${VERSION}"
