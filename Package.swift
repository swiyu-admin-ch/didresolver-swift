// swift-tools-version:5.3
import PackageDescription

let version = "2.8.1"
let xcframework_name = "didresolver"
let binary_target_url_github_owner = "swiyu-admin-ch"
let binary_target_url_github_repo = "didresolver-swift"
let checksum = "857e10c39e822b6e14235f8c74e254331bb0e0a2d2e181f4c4198dd5ce636460"


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
