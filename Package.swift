// swift-tools-version:5.9.0

import PackageDescription
import Foundation

let package = Package(
    name: "sync_crypto",
    platforms: [.iOS("14.0"), .macOS("10.15")],
    products: [
        .library(
            name: "DDGSyncCrypto",
            targets: [
                "DDGSyncCrypto",
                "Clibsodium",
                "DDGSyncCrypto_PrecompiledProduct"
            ]
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
            url: "https://github.com/swift-precompiled/sync_crypto/releases/download/0.7.0/DDGSyncCrypto-14a4b77a70821831a16d5624c351bcb729aed68d88ffe602167d2a985180732c.xcframework.zip",
            checksum: "14a4b77a70821831a16d5624c351bcb729aed68d88ffe602167d2a985180732c"
        ),
        .target(
            name: "DDGSyncCrypto_PrecompiledProduct",
            dependencies: ["DDGSyncCrypto", "Clibsodium"],
            packageAccess: false
        )
    ]
)