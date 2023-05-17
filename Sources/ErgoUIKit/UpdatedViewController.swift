// Copyright © Fleuronic LLC. All rights reserved.

import UIKit
import WorkflowUI

class UpdatedViewController<View: UpdatedView>: ScreenViewController<View.Screen> {
	private let contentView: View

	// MARK: UIViewController
	override func viewDidLoad() {
		super.viewDidLoad()

		view.backgroundColor = .systemBackground
		view.addSubview(contentView)

		NSLayoutConstraint.activate(
			[
				view.safeAreaLayoutGuide.topAnchor.constraint(equalTo: contentView.topAnchor),
				view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
				view.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
				view.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
			]
		)
	}

	// MARK: ScreenViewController
	required init(screen: View.Screen, environment: ViewEnvironment) {
		contentView = .init(screen: screen)

		super.init(screen: screen, environment: environment)

		contentView.translatesAutoresizingMaskIntoConstraints = false
	}

	override func screenDidChange(from previousScreen: View.Screen, previousEnvironment: ViewEnvironment) {
		super.screenDidChange(from: previousScreen, previousEnvironment: previousEnvironment)
		contentView.update(with: screen)
	}
}
