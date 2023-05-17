// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "ErgoUIKit",
    platforms: [
        .iOS(.v16)
    ],
    products: [
		.library(
			name: "ErgoUIKit",
			targets: ["ErgoUIKit"]
		)
    ],
    dependencies: [
		.package(url: "https://github.com/Fleuronic/Ergo", branch: "main"),
		.package(url: "https://github.com/ReactiveCocoa/ReactiveSwift.git", branch: "swift-concurrency"),
		.package(url: "https://github.com/ReactiveCocoa/ReactiveCocoa", from: "12.0.0"),
    ],
    targets: [
		.target(
			name: "ErgoUIKit",
			dependencies: [
				"Ergo",
				"ReactiveSwift",
				"ReactiveCocoa"
			]
		)
    ]
)
