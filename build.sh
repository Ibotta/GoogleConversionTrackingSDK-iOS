#!/bin/bash

xcodebuild build -scheme GoogleConversionTrackingSDK -derivedDataPath derived_data -configuration Release BUILD_LIBRARY_FOR_DISTRIBUTION=YES

echo "Framwork location: derived_data/Build/Products/Release-iphoneos/GoogleConversionTrackingSDK.framework"
