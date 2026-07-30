// swift-tools-version:5.3
import PackageDescription

let version = "2.9.0"
let xcframework_name = "didresolver"
let binary_target_url_github_owner = "swiyu-admin-ch"
let binary_target_url_github_repo = "didresolver-swift"
let checksum = "3e8546dcacabde8c98541bcc513734a94d36d658613b788f67a302bc239cff49"

let package = Package(
    name: "DidResolver",
    platforms: [.iOS(.v14)],
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
