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
		.package(url: "https://github.com/Fleuronic/Inject", branch: "main")
    ],
    targets: [
		.target(
			name: "ErgoUIKit",
			dependencies: [
				"Ergo",
				"Inject"
			]
		)
    ]
)
