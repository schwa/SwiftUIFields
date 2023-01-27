// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIFields",
    platforms: [
        .iOS("16.0"),
        .macOS("13.0"),
        .macCatalyst("16.0"),
    ],
    products: [
        .library(
            name: "SwiftUIFields",
            targets: ["SwiftUIFields"]),
    ],
    dependencies: [
        .package(url: "https://github.com/schwa/Everything", branch: "main"),
        .package(url: "https://github.com/schwa/SIMD-Support", branch: "main"),
        .package(url: "https://github.com/schwa/SwiftCalc", branch: "main"),
    ],
    targets: [
        .target(
            name: "SwiftUIFields",
            dependencies: [
                "Everything",
                .product(name: "SIMDSupport", package: "SIMD-Support"),
                "SwiftCalc",
            ]),
        .testTarget(
            name: "SwiftUIFieldsTests",
            dependencies: [
                "SwiftUIFields"
            ]),
    ]
)
