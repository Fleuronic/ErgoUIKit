// Copyright © Fleuronic LLC. All rights reserved.

import Ergo
import XCTest
import SnapshotTesting

@testable import ErgoUIKit

public func assertView<View: UIView & Updating>(ofType type: View.Type, backedBy screen: View.Screen, matchesSnapshotIn filePath: String) {
	let viewController = UpdatingViewController<View>(screen: screen, environment: .empty)
	viewController.screenDidChange(from: screen, previousEnvironment: .empty)

	XCTAssertNil(
		verifySnapshot(
			matching: viewController.view,
			as: .image,
			snapshotDirectory: filePath
				.components(separatedBy: ".")
				.dropLast(1)
				.joined(separator: ".")
				.replacing("/Tests", with: "/Resources"),
			testName: "ViewContentSnapshot"
		)
	)
}
