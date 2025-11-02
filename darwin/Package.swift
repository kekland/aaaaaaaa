// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "flmbgl_darwin_common",
    platforms: [
        .iOS("12.0"),
        .macOS("10.15")
    ],
    products: [
        .library(name: "flmbgl_darwin_common", targets: ["flmbgl_darwin_common"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "flmbgl_darwin_common",
            packageAccess: true
        )
    ]
)
