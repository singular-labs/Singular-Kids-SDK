// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Singular-Kids-SDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Singular",
            targets: ["Singular", "SingularPrivacy"]),
    ],
    dependencies: [
    ],
    targets: [.binaryTarget(
        name: "Singular",
        path: "Singular.xcframework"),
        .target(
            name: "SingularPrivacy",
            path: "Sources/Singular",
            resources: [
                .copy("PrivacyInfo.xcprivacy")
            ],
            linkerSettings: [
                .linkedFramework("StoreKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("Security"),
                .linkedFramework("WebKit"),
                .linkedLibrary("sqlite3.0"),
                .linkedLibrary("z")
            ])]
)
