// Copyright © Fleuronic LLC. All rights reserved.

import UIKit
import XCTest

public extension UIView {
	func subview(_ index: Int = 0) throws -> UIView {
		try XCTUnwrap(index < subviews.count ? subviews[index] : nil)
	}
    
	func label(_ index: Int = 0) throws -> UILabel {
		try XCTUnwrap(index < subviews.count ? subviews[index] as? UILabel : nil)
	}

	func button(_ index: Int = 0) throws -> UIButton {
		try XCTUnwrap(index < subviews.count ? subviews[index] as? UIButton : nil)
	}

	func activityIndicatorView(_ index: Int = 0) throws -> UIActivityIndicatorView {
		try XCTUnwrap(index < subviews.count ? subviews[index] as? UIActivityIndicatorView : nil)
	}

	func stackView(_ index: Int = 0) throws -> UIStackView {
		try XCTUnwrap(index < subviews.count ? subviews[index] as? UIStackView : nil)
	}
    
	func tableView(_ index: Int = 0) throws -> UITableView {
		try XCTUnwrap(index < subviews.count ? subviews[index] as? UITableView : nil)
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
