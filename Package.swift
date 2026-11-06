// swift-tools-version:5.3
import PackageDescription

let version = "2.10.1"
let xcframework_name = "didresolver"
let binary_target_url_github_owner = "swiyu-admin-ch"
let binary_target_url_github_repo = "didresolver-swift"
let checksum = "e27802f072a339892fe7eacd62867eb4e376bfe0a473f857296ba194126fe264"

let package = Package(
    name: "DidResolver",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DidResolver",
            targets: ["DidResolver"]),
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "DidResolverRemoteBinaryPackage",
            url: "https://github.com/\(binary_target_url_github_owner)/\(binary_target_url_github_repo)/releases/download/\(version)/\(xcframework_name)-\(version).xcframework.zip",
            checksum: "\(checksum)"
        ),
        .target(
            name: "DidResolver",
            dependencies: ["DidResolverRemoteBinaryPackage"]
        )
    ]
)
