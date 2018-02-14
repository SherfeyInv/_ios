#!/bin/bash

IOS_SYSTEM_VER="1.1"
LIBSSH2_VER="1.0"

HHROOT="https://github.com/holzschu"

(cd "${BASH_SOURCE%/*}/Frameworks"
# ios_system
echo "Downloading ios_system:"
curl -OL $HHROOT/ios_system/releases/download/v$IOS_SYSTEM_VER/smallRelease.tar.gz
( tar -xzf smallRelease.tar.gz --strip 1 && rm smallRelease.tar.gz ) || { echo "ios_system failed to download"; exit 1; }
)

echo "Downloading header file:"
curl -OL https://raw.githubusercontent.com/holzschu/ios_system/master/ios_error.h



