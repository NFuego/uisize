
// MARK: Imports
import UIKit
import SwiftyVIPER
import SnapKit
// MARK: Protocols

/// Should be conformed to by the `NoticeBoardInteractor` and referenced by `NoticeBoardPresenter`
protocol NoticeBoardPresenterViewProtocol: class {
	/** Sets the title for the view
	- parameters:
		- title The title to set
	*/
	func set(title: String?)
    func setBoard(i:UIImageView)
}

// MARK: -

/// The View Controller for the NoticeBoard module
class NoticeBoardViewController: UIViewController {

	// MARK: - Constants
	let presenter: NoticeBoardViewPresenterProtocol

	// MARK: Variables

	// MARK: Inits
	init(presenter: NoticeBoardViewPresenterProtocol) {
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

// MARK: - NoticeBoard Presenter to View Protocol

extension NoticeBoardViewController: NoticeBoardPresenterViewProtocol {

	func set(title: String?) {
		self.title = title
	}

    func setBoard(i: UIImageView) {
       self.view.addSubview(i)
        i.snp.makeConstraints { (make) in
            make.size.equalToSuperview()
        }
    }
}
