
// MARK: Imports

import UIKit
import SwiftyVIPER

// MARK: Protocols

/// Should be conformed to by the `OverlordInteractor` and referenced by `OverlordPresenter`
protocol OverlordPresenterViewProtocol: class {
	/** Sets the title for the view
	- parameters:
		- title The title to set
	*/
	func set(title: String?)
}

// MARK: -

/// The View Controller for the Overlord module
class OverlordViewController: UIViewController {

	// MARK: - Constants
	let presenter: OverlordViewPresenterProtocol

	// MARK: Variables

	// MARK: Inits

	init(presenter: OverlordViewPresenterProtocol) {
		self.presenter = presenter
		super.init(nibName: nil, bundle: nil)
	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	// MARK: - Load Functions

	override func viewDidLoad() {
    	super.viewDidLoad()
		presenter.viewLoaded()

		view.backgroundColor = .white
    }
}

// MARK: - Overlord Presenter to View Protocol

extension OverlordViewController: OverlordPresenterViewProtocol {
	func set(title: String?) {
		self.title = title
	}
}
