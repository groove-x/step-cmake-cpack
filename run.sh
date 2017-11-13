#!/bin/bash

set -e

apt install -y devscripts fakeroot dpkg-dev

NOW=`date +'%Y%m%d-%H%M%S'`
mkdir -p ${WERCKER_CMAKE_CPACK_CMAKE_BUILD_DIR}
cd ${WERCKER_CMAKE_CPACK_CMAKE_BUILD_DIR}
cmake ${WERCKER_CMAKE_CPACK_CMAKE_ARGUMENTS} -DCPACK_PACKAGE_REVISION=NOW ${WERCKER_CMAKE_CPACK_CMAKE_SOURCE_PATH}
make package
