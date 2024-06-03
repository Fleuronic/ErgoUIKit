// Copyright © Fleuronic LLC. All rights reserved.

import protocol Ergo.ScreenBacked

public protocol Updating: ScreenBacked {
	init(screen: Screen)

	func update(with screen: Screen)
}
