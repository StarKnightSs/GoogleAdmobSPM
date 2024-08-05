// swift-tools-version: 5.10

import PackageDescription

let package = Package(
  name: "GoogleAdmobSPM",
  platforms: [.iOS(.v13)],
  products: [
    .library(
      name: "GoogleAdmobSPM",
      type: .dynamic,
      targets: ["GoogleAdmobSPM"]),
  ],
  targets: [
    .target(
      name: "GoogleAdmobSPM",
      dependencies: ["GoogleAdmob", "GoogleMobileAds", "UserMessagingPlatform"],
      path: "Sources"
    ),
    .binaryTarget(name: "GoogleAdmob", path: "Frameworks/GoogleAdmob.xcframework"),
    .binaryTarget(name: "GoogleMobileAds", path: "Frameworks/GoogleMobileAds.xcframework"),
    .binaryTarget(name: "UserMessagingPlatform", path: "Frameworks/UserMessagingPlatform.xcframework")
  ]
)
