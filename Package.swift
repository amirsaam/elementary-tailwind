// swift-tools-version: 6.1
import PackageDescription

let featureFlags: [SwiftSetting] = [
    .enableExperimentalFeature("StrictConcurrency=complete"),
    .enableUpcomingFeature("ExistentialAny"),
]

let package = Package(
    name: "elementary-tailwind",
    platforms: [
        .macOS(.v14),
        .iOS(.v15),
        .tvOS(.v17),
        .watchOS(.v10),
    ],
    products: [
        .library(name: "ElementaryTailwind", targets: ["ElementaryTailwind"])
    ],
    dependencies: [
        .package(url: "https://github.com/elementary-swift/elementary.git", from: "0.8.0")
    ],
    targets: [
        .target(
            name: "ElementaryTailwind",
            dependencies: [
                .product(name: "Elementary", package: "elementary")
            ],
            swiftSettings: featureFlags
        ),
        .testTarget(
            name: "ElementaryTailwindTests",
            dependencies: [
                "ElementaryTailwind",
                "TestUtilities",
                .product(name: "Elementary", package: "elementary"),
            ],
            exclude: [
                "Layout/SnapshotFixtures",
                "TWToken/SnapshotFixtures",
                "Typography/SnapshotFixtures",
            ],
            swiftSettings: featureFlags
        ),
        .testTarget(
            name: "TestUtilities",
            dependencies: [
                .product(name: "Elementary", package: "elementary")
            ],
            path: "Tests/TestUtilities",
            swiftSettings: featureFlags
        ),
    ]
)
