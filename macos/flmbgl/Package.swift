// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "flmbgl",
    platforms: [
        .macOS("10.15")
    ],
    products: [
        .library(name: "flmbgl", targets: ["flmbgl"])
    ],
    dependencies: [
        .package(path: "../../darwin")
    ],
    targets: [
        .binaryTarget(
          name: "flmbgl_macos_xcframework",
          path: "Artifacts/flmbgl_macos_xcframework.xcframework"
        ),
        .target(
            name: "flmbgl",
            dependencies: [
                .target(name: "flmbgl_macos_xcframework")
            ], 
            packageAccess: true
        )
    ]
)
