// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "EasyFlag",
    platforms: [.macOS(.v13), .iOS(.v15)],
    products: [
        .library(name: "EasyFlag", targets: ["EasyFlag"]),
        .library(name: "EasyFileFlag", targets: ["EasyFileFlag"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/EasyPackages/EasyMock.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/EasyPackages/EasyTesting.git",
            branch: "main"
        )
    ],
    targets: [
        .target(name: "EasyFlag"),
        
        .target(
            name: "EasyFileFlag",
            dependencies: ["EasyFlag"]
        ),
        .testTarget(
            name: "EasyFileFlagTests",
            dependencies: ["EasyMock"]
        ),
    ]
)
