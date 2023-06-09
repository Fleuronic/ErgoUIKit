// Copyright © Fleuronic LLC. All rights reserved.

import UIKit
import WorkflowUI
import Inject

import protocol Ergo.ScreenBacked

public protocol UpdatingScreen: Screen where View.Screen == Self {
	associatedtype View: UIView & Updating
	associatedtype Strings = String
}

// MARK: -
public extension UpdatingScreen {
	typealias ScreenString = (Strings.Type) -> String

	// MARK: Screen
	func viewControllerDescription(environment: ViewEnvironment) -> ViewControllerDescription {
		.init(
			type: Inject.ViewControllerHost<UpdatingViewController<View>>.self,
			build: { .init(.init(screen: self, environment: environment)) },
			update: { $0.instance.update(screen: self, environment: environment) }
		)
	}
}
