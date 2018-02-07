#!/bin/bash

LIBRARY_PATH='out/Release'
TARGET_LIBRARY_PATH='tools/ios-framework/bin/arm64'
NODELIB_PROJECT_PATH='tools/ios-framework'

./configure --dest-os=ios --dest-cpu=arm64 --openssl-no-asm --without-intl --without-snapshot
make -j2

rm -Rf $TARGET_LIBRARY_PATH
mkdir -p $TARGET_LIBRARY_PATH
cp $LIBRARY_PATH/*.a $TARGET_LIBRARY_PATH/

rm -Rf out_ios
mkdir -p out_ios
FRAMEWORK_TARGET_DIR=${PWD}/out_ios

xcodebuild build -project $NODELIB_PROJECT_PATH/NodeMobile.xcodeproj -target "NodeMobile" -configuration Release -arch arm64 -sdk "iphoneos" SYMROOT=$FRAMEWORK_TARGET_DIR