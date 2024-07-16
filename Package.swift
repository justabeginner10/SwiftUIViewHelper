// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIViewHelper",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "SwiftUIViewHelper",
            targets: ["SwiftUIViewHelper"]),
    ],
    dependencies: [
        // Add any dependencies here
    ],
    targets: [
        .target(
            name: "SwiftUIViewHelper",
            dependencies: []),
        .testTarget(
            name: "SwiftUIViewHelperTests",
            dependencies: ["SwiftUIViewHelper"]),
    ]
)
