// Copyright © Fleuronic LLC. All rights reserved.

import Ergo
import XCTest
import SnapshotTesting

@testable import ErgoUIKit

public func assertView<View: UIView & Updating>(ofType type: View.Type, named name: String, backedBy screen: View.Screen, matchesSnapshotIn filePath: String) {
	let viewController = UpdatingViewController<View>(screen: screen, environment: .empty)
	viewController.screenDidChange(from: screen, previousEnvironment: .empty)

	XCTAssertNil(
		verifySnapshot(
			matching: viewController.view,
			as: .image,
			named: "Snapshot",
			snapshotDirectory: filePath
				.components(separatedBy: ".")
				.dropLast(1)
				.joined()
				.components(separatedBy: "/")
				.dropLast(1)
				.joined(separator: "/")
				.appending("/Resources"),
			testName: name
		)
	)
}
