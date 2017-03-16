//
//  OverlordPresenter.swift
//  Project: T2
//
//  Module: Overlord
//
//  By zcon 2017/3/15
//  test 2017年
//

// MARK: Imports

import UIKit

import SwiftyVIPER

// MARK: Protocols

/// Should be conformed to by the `OverlordPresenter` and referenced by `OverlordViewController`
protocol OverlordViewPresenterProtocol: ViewPresenterProtocol {

}

/// Should be conformed to by the `OverlordPresenter` and referenced by `OverlordInteractor`
protocol OverlordInteractorPresenterProtocol: class {
	/** Sets the title for the presenter
	- parameters:
		- title The title to set
	*/
	func set(title: String?)
}

// MARK: -

/// The Presenter for the Overlord module
final class OverlordPresenter {

	// MARK: - Constants

	let router: OverlordPresenterRouterProtocol
	let interactor: OverlordPresenterInteractorProtocol

	// MARK: Variables

	weak var view: OverlordPresenterViewProtocol?

	// MARK: Inits

	init(router: OverlordPresenterRouterProtocol, interactor: OverlordPresenterInteractorProtocol) {
		self.router = router
		self.interactor = interactor
	}
}

// MARK: - Overlord View to Presenter Protocol

extension OverlordPresenter: OverlordViewPresenterProtocol {

	func viewLoaded() {
		interactor.requestTitle()
	}
}

// MARK: Overlord Interactor to Presenter Protocol

extension OverlordPresenter: OverlordInteractorPresenterProtocol {

	func set(title: String?) {
		view?.set(title: title)
	}
}
