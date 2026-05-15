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
        .package(url: "https://github.com/Mountain-View-Staging/MarqueeShaderKit.git", from: "1.0.0"),
        .package(url: "https://github.com/Mountain-View-Staging/LoggingKit.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "MetalViewKit",
            dependencies: ["MarqueeShaderKit", "LoggingKit"],
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
