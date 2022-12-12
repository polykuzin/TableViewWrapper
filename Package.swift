// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TableViewWrapper",
    products: [
        .library(
            name: "TableViewWrapper",
            targets: ["TableViewWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ra1028/DifferenceKit.git", exact: "1.3.0")
    ],
    targets: [
        .target(
            name: "TableViewWrapper",
            dependencies: [
                "DifferenceKit"
            ]
        ),
        .testTarget(
            name: "TableViewWrapperTests",
            dependencies: ["TableViewWrapper"]),
    ]
)
