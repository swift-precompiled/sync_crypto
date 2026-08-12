// swift-tools-version:5.9.0

import PackageDescription
import Foundation

let package = Package(
    name: "sync_crypto",
    platforms: [.iOS("14.0"), .macOS("10.15")],
    products: [
        .library(
            name: "DDGSyncCrypto",
            targets: ["DDGSyncCrypto_PrecompiledProduct"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "Clibsodium",
            url: "https://github.com/swift-precompiled/sync_crypto/releases/download/0.7.0/Clibsodium-d7a57ab6389f7dab6d637f035e0627079ffde1cefe21748946620ff8176f7022.xcframework.zip",
            checksum: "d7a57ab6389f7dab6d637f035e0627079ffde1cefe21748946620ff8176f7022"
        ),
        .binaryTarget(
            name: "DDGSyncCrypto",
            url: "https://github.com/swift-precompiled/sync_crypto/releases/download/0.7.0/DDGSyncCrypto-064669ecc2b6a730b8dcafdbe3821ca046e60abcd23245615b47ea5034f42424.xcframework.zip",
            checksum: "064669ecc2b6a730b8dcafdbe3821ca046e60abcd23245615b47ea5034f42424"
        ),
        .target(
            name: "DDGSyncCrypto_PrecompiledProduct",
            dependencies: ["DDGSyncCrypto", "Clibsodium"]
        )
    ]
)