// Copyright © Fleuronic LLC. All rights reserved.

import UIKit
import WorkflowUI
import Layoutless
import Inject

public protocol UpdatedScreen: Screen where View.Screen == Self {
	associatedtype View: UpdatedView
	associatedtype Strings = String
}

// MARK: -
public extension UpdatedScreen {
	typealias ScreenString = (Strings.Type) -> String

	// MARK: Screen
	func viewControllerDescription(environment: ViewEnvironment) -> ViewControllerDescription {
		.init(
			type: Inject.ViewControllerHost<UpdatedViewController<View>>.self,
			build: { .init(.init(screen: self, environment: environment)) },
			update: { $0.instance.update(screen: self, environment: environment) }
		)
	}
}

