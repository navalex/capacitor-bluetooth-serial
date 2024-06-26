// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorBluetoothSerial",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorBluetoothSerial",
            targets: ["BluetoothSerialPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "BluetoothSerialPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/BluetoothSerialPlugin"),
        .testTarget(
            name: "BluetoothSerialPluginTests",
            dependencies: ["BluetoothSerialPlugin"],
            path: "ios/Tests/BluetoothSerialPluginTests")
    ]
)