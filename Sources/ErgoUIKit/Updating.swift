// Copyright © Fleuronic LLC. All rights reserved.

import UIKit
import WorkflowUI

public protocol Updating {
	associatedtype Screen: WorkflowUI.Screen

	init(screen: Screen)

	func update(with screen: Screen)
}
