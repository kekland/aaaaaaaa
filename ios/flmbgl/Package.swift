// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "flmbgl",
    platforms: [
      .iOS("12.0"),
    ],
    products: [
        .library(name: "flmbgl", targets: ["flmbgl"])
    ],
    dependencies: [
        .package(path: "../../darwin")
    ],
    targets: [
        .binaryTarget(
          name: "flmbgl_ios_xcframework",
          path: "Artifacts/flmbgl_ios_xcframework.xcframework"
        ),
        .target(
            name: "flmbgl",
            dependencies: [
                .target(name: "flmbgl_ios_xcframework"),
                .product(name: "flmbgl_darwin_common", package: "darwin")
            ],
            packageAccess: true
        )
    ]
)
