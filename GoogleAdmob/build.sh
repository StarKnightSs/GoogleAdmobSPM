#!/bin/bash
set -e

# Archive for Device
xcodebuild archive \
-workspace GoogleAdmob.xcworkspace \
-scheme GoogleAdmob \
-configuration Release \
-sdk iphoneos \
-destination "generic/platform=iOS" \
-archivePath Frameworks/GoogleAdmob.xcarchive \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
SKIP_INSTALL=NO

# Archive for Simulator
xcodebuild archive \
-workspace GoogleAdmob.xcworkspace \
-scheme GoogleAdmob \
-configuration Debug \
-sdk iphonesimulator \
-destination "generic/platform=iOS Simulator" \
-archivePath Frameworks/GoogleAdmob-Sim.xcarchive \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
SKIP_INSTALL=NO

# Remove existing XCFramework
rm -rf Frameworks/GoogleAdmob.xcframework

# Create XCFramework From Archive
xcodebuild \
-create-xcframework \
-framework Frameworks/GoogleAdmob.xcarchive/Products/Library/Frameworks/GoogleAdmob.framework \
-framework Frameworks/GoogleAdmob-Sim.xcarchive/Products/Library/Frameworks/GoogleAdmob.framework \
-output Frameworks/GoogleAdmob.xcframework

# Delete Archives
rm -rf Frameworks/*.xcarchive

echo "XCFramework Successfully Created 💥💥"
