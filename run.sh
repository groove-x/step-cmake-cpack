#!/bin/bash

set -eu

apt-get install -y devscripts fakeroot dpkg-dev

if [ "$WERCKER_CMAKE_CPACK_CLEAR_BUILD_DIR" != "false" ]; then
  if [ -e ${WERCKER_CMAKE_CPACK_CMAKE_BUILD_DIR} ]; then
    rm -rf ${WERCKER_CMAKE_CPACK_CMAKE_BUILD_DIR}
  fi
fi

NOW=$(date -u +'%Y%m%dT%H%M%SZ')
mkdir -p ${WERCKER_CMAKE_CPACK_CMAKE_BUILD_DIR}
cd ${WERCKER_CMAKE_CPACK_CMAKE_BUILD_DIR}
cmake ${WERCKER_CMAKE_CPACK_CMAKE_ARGUMENTS} -DCPACK_PACKAGE_REVISION=${NOW} ${WERCKER_CMAKE_CPACK_CMAKE_SOURCE_PATH}
make package
