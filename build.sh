#!/bin/bash

xcodebuild build -scheme GoogleConversionTrackingSDK -derivedDataPath derived_data -arch arm64 -sdk iphoneos BUILD_LIBRARY_FOR_DISTRIBUTION=YES

echo "Framwork location: derived_data/Build/Products/Debug-iphoneos/GoogleConversionTrackingSDK.framework"
