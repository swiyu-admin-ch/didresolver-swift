// swift-tools-version:5.3
import PackageDescription

let version = "2.2.0"
let checksum = "47cf4689b768411675e63f3cd5196c1dc71fa7b7755357da74df2f356b653cb1"

let package = Package(
    name: "DidResolver",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DidResolver",
            targets: ["DidResolver", "DidResolverRemoteBinaryPackage"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DidResolver"
        ),
        .binaryTarget(
            name: "DidResolverRemoteBinaryPackage",
            url: "https://github.com/swiyu-admin-ch/didresolver-swift/releases/download/\(version)/didresolver-\(version).xcframework.zip",
            checksum: "\(checksum)"
        )
    ]
)
