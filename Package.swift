// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "MetalViewKit",
    platforms: [
        .macOS(.v15),
        .iOS(.v16),
        .tvOS(.v18)
    ],
    products: [
        .library(
            name: "MetalViewKit",
            targets: ["MetalViewKit"]
        ),
    ],
    dependencies: [
        .package(path: "../MarqueeFoundation"),
        .package(path: "../MarqueeShaderKit"),
        .package(path: "../LoggingKit"),
    ],
    targets: [
        .target(
            name: "MetalViewKit",
            dependencies: ["MarqueeFoundation", "MarqueeShaderKit", "LoggingKit"],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        ),
        .testTarget(
            name: "MetalViewKitTests",
            dependencies: ["MetalViewKit"]
        ),
    ],
    swiftLanguageModes: [.v5]
)
