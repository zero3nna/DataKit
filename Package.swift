// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "DataKit",
    platforms: [
        .iOS(.v13), .macOS(.v12), .tvOS(.v13), .watchOS(.v8)
    ],
    products: [
        .library(
            name: "DataKit",
            type: .dynamic,
            targets: ["DataKit"]
        ),
        .executable(
            name: "DataKitBenchmark",
            targets: ["DataKitBenchmark"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Nimble", from: "9.2.0"),
    ],
    targets: [
        .target(
            name: "DataKit",
            dependencies: []
        ),
        .testTarget(
            name: "DataKitTests",
            dependencies: ["DataKit", "Nimble"]
        ),
        .executableTarget(
            name: "DataKitBenchmark",
            dependencies: ["DataKit"]
        )
    ]
)
