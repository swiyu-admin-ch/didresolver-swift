// swift-tools-version:5.3
import PackageDescription

let version = "2.1.4"
let checksum = "019770f6cdda48b222a2cf049e349bca17bf8608ddd52d3348981e04ef679490"

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
            url: "https://github.com/swiyu-admin-ch/didresolver-swift/releases/download/\(version)/didresolver.xcframework.zip",
            checksum: "\(checksum)"
        )
    ]
)
