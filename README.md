# Google AdMob Wrapper for Facebook Mediation with SPM

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)
![iOS](https://img.shields.io/badge/iOS-13.0%2B-blue.svg)

This project provides a wrapper for Google AdMob pods, enabling the use of Swift Package Manager (SPM) for Facebook Mediation instead of relying on CocoaPods.

## Features

- **Seamless Integration**: Easily integrate Facebook Mediation into your iOS project using SPM.
- **Simplified Dependency Management**: Eliminate the need for CocoaPods in your main app, simplifying your build process.
- **Up-to-Date**: Always stay updated with the latest versions of Google AdMob and Facebook Mediation.
- **Other Mediation Partners**: It's very straight forward to integrate other mediation partners by including their framework in the Pod file & using the [script](https://github.com/StarKnightSs/GoogleAdmobSPM/blob/main/GoogleAdmob/build.sh) to generate a new `XCFramework` as per your needs. Note: After generating new XCFramework for `GoogleAdmob` module, don't forget to replace it in the `Frameworks` folder which is in the root directory.

## Installation

### Swift Package Manager

1. Open your project in Xcode.
2. Navigate to `File` > `Swift Packages` > `Add Package Dependency`.
3. Enter the repository URL: `https://github.com/StarKnightSs/GoogleAdmobSPM`
4. Follow the prompts to add the package to your project.

### CocoaPods (Inside Framework)

If you need to use CocoaPods inside a framework, ensure that it is properly set up. You can find more details on how to configure CocoaPods inside a framework in the [CocoaPods documentation](https://guides.cocoapods.org/using/using-cocoapods.html).

## Usage

1. Import the GoogleAdmobSPM module in your code:

    ```swift
    import GoogleAdmobSPM
    ```

2. Initialize and configure AdMob in your code as below (Facebook Mediation enabled automatically):

    ```swift
    // Initialize Google AdMob
    GADMobileAds.sharedInstance().start(completionHandler: nil)
    ```

3. Use AdMob ads in your application as usual, without the need to import any other module:

    ```swift
    let adView = GADBannerView(adSize: kGADAdSizeBanner)
    adView.adUnitID = "your-ad-unit-id"
    adView.rootViewController = self
    adView.load(GADRequest())
    ```

## License

This project is licensed under the MIT License. See the [LICENSE](https://github.com/StarKnightSs/GoogleAdmobSPM/blob/main/LICENSE) file for details.

## Contact

If you have any questions, feel free to reach out to us at [contact@starknights.in](mailto:contact@starknights.in).
