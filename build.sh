#!/bin/bash

xcodebuild build \
    -scheme GoogleConversionTrackingSDK \
    -derivedDataPath derived_data \
    -arch arm64 \
    -sdk iphoneos BUILD_LIBRARY_FOR_DISTRIBUTION=YES
mkdir -p build/devices
cp -r derived_data/Build/Products/Debug-iphoneos/ build/devices

xcodebuild build \
    -scheme GoogleConversionTrackingSDK \
    -derivedDataPath derived_data \
    -arch x86_64 \
    -sdk iphonesimulator BUILD_LIBRARY_FOR_DISTRIBUTION=YES
mkdir -p build/simulators
cp -r derived_data/Build/Products/Debug-iphonesimulator/ build/simulators

xcodebuild -create-xcframework \
    -framework build/simulators/GoogleConversionTrackingSDK.framework \
    -framework build/devices/GoogleConversionTrackingSDK.framework \
    -output build/GoogleConversionTrackingSDK.xcframework

echo "Framwork location: derived_data/Build/Products/Release-iphoneos/GoogleConversionTrackingSDK.framework"
