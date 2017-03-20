
// MARK: Imports
import UIKit
import SwiftyVIPER
import SnapKit
import ReSwift
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
    let v1:UIView = UIView()
    let v2:UIView = UIView()
    let v3:UIView = UIView()
    let v4:UIView = UIView()

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
		view.backgroundColor = .blue
//        self.view.addSubview(v1)
//        self.view.addSubview(v2)
//        self.view.addSubview(v3)
//        self.view.addSubview(v4)
//        v1.backgroundColor = .red
//        v2.backgroundColor = .yellow
//        v3.backgroundColor = .blue
//        v4.backgroundColor = .black
    }

}

// MARK: - NoticeBoard Presenter to View Protocol

extension NoticeBoardViewController: NoticeBoardPresenterViewProtocol {

	func set(title: String?) {
		self.title = title
	}

    func setBoard(i: UIImageView) {
        /*
         320x500 for 5
         
         1.15 for 4.7
         1.2 for 5.5
         1.5 for 9.7

         */
       let ratio = 1.2
       self.view.addSubview(i)
        i.snp.makeConstraints { (make) in
            make.width.equalTo(320 * ratio)
            make.height.equalTo(500 * ratio)
            make.center.equalToSuperview()
        }
    }

    func dimensionTest(){
       v1.snp.makeConstraints { (make) in
        make.width.equalToSuperview()
        make.height.equalToSuperview().multipliedBy(0.25)
        make.top.equalToSuperview()
        }
       v2.snp.makeConstraints { (make) in
        make.width.equalToSuperview()
        make.height.equalToSuperview().multipliedBy(0.25)
        make.top.equalTo(v1.snp.bottom)
        }
       v3.snp.makeConstraints { (make) in
        make.width.equalToSuperview()
        make.height.equalToSuperview().multipliedBy(0.25)
        make.top.equalTo(v2.snp.bottom)
        }
       v4.snp.makeConstraints { (make) in
        make.width.equalToSuperview()
        make.height.equalToSuperview().multipliedBy(0.25)
        make.top.equalTo(v3.snp.bottom)
        }
    }
}

// MARK:- ReSwift
extension NoticeBoardViewController : StoreSubscriber {
    override func viewWillAppear(_ animated: Bool) {
        mainStore.subscribe(self)
        mainStore.dispatch(updateStoreAppointments)
    }

    override func viewDidAppear(_ animated: Bool) {
//        dimensionTest()
        mainStore.unsubscribe(self)
    }

    func newState(state: AppState) {
        print(state.appointments)
    }
}
