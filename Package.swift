// swift-tools-version:5.0
import PackageDescription

let package = Package(
	name: "Lottie",
	platforms: [.iOS(.v11)],
	products: [
		.library(name: "Lottie", targets: ["Lottie"])
	], dependencies: [
		.package(url: "https://github.com/michaeleisel/ZippyJSON", from: "1.0.1")
	],
	   targets: [
		.target(
			name: "Lottie",
			dependencies: ["ZippyJSON"],
			path: "lottie-swift/src",
			exclude: ["Public/MacOS"]
		)
	]
)
