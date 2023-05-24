// Copyright © Fleuronic LLC. All rights reserved.

import UIKit
import XCTest

public extension UIView {
	func label(_ index: Int = 0) throws -> UILabel {
		try XCTUnwrap(index < subviews.count ? subviews[index] as? UILabel : nil)
	}

	func button(_ index: Int = 0) throws -> UIButton {
		try XCTUnwrap(index < subviews.count ? subviews[index] as? UIButton : nil)
	}

	func stackView(_ index: Int = 0) throws -> UIStackView {
		try XCTUnwrap(index < subviews.count ? subviews[index] as? UIStackView : nil)
	}
}

public extension UIButton {
	func tap() {
		let target = allTargets.first! as NSObject
		target.perform(
			Selector(
				actions(
					forTarget: target,
					forControlEvent: .touchUpInside
				)!.first!
			)
		)
	}
}
