// swift-tools-version:5.6
import PackageDescription

let package = Package(
	name: "ErgoUIKit",
	platforms: [
		.iOS(.v13),
		.macOS(.v10_15)
	],
	products: [
		.library(
			name: "ErgoUIKit",
			targets: ["ErgoUIKit"]
		),
		.library(
			name: "ErgoUIKitTesting",
			targets: ["ErgoUIKitTesting"]
		)
	],
	dependencies: [
		.package(url: "https://github.com/Fleuronic/Ergo", branch: "main"),
		.package(url: "https://github.com/Fleuronic/Inject", branch: "main"),
		.package(url: "https://github.com/pointfreeco/swift-snapshot-testing", from: "1.10.0")
	],
	targets: [
		.target(
			name: "ErgoUIKit",
			dependencies: [
				"Ergo",
				"Inject"
			]
		),
		.target(
			name: "ErgoUIKitTesting",
			dependencies: [
				"ErgoUIKit",
				.product(name: "SnapshotTesting", package: "swift-snapshot-testing")
			]
		)
	]
)
