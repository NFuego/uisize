//
//  NoticeBoardPresenter.swift
//  Project: T2
//
//  Module: NoticeBoard
//
//  By zcon 2017/3/13
//  test 2017年
//

// MARK: Imports

import UIKit

import SwiftyVIPER

// MARK: Protocols

/// Should be conformed to by the `NoticeBoardPresenter` and referenced by `NoticeBoardViewController`
protocol NoticeBoardViewPresenterProtocol: ViewPresenterProtocol {

}

/// Should be conformed to by the `NoticeBoardPresenter` and referenced by `NoticeBoardInteractor`
protocol NoticeBoardInteractorPresenterProtocol: class {
	/** Sets the title for the presenter
	- parameters:
		- title The title to set
	*/
	func set(title: String?)
    func setBoard(imv:UIImageView)
}

// MARK: -

/// The Presenter for the NoticeBoard module
final class NoticeBoardPresenter {

	// MARK: - Constants

	let router: NoticeBoardPresenterRouterProtocol
	let interactor: NoticeBoardPresenterInteractorProtocol

	// MARK: Variables

	weak var view: NoticeBoardPresenterViewProtocol?

	// MARK: Inits

	init(router: NoticeBoardPresenterRouterProtocol, interactor: NoticeBoardPresenterInteractorProtocol) {
		self.router = router
		self.interactor = interactor
	}
}

// MARK: - NoticeBoard View to Presenter Protocol

extension NoticeBoardPresenter: NoticeBoardViewPresenterProtocol {

	func viewLoaded() {
		interactor.requestTitle()
        interactor.reqBoards()
	}
}

// MARK: NoticeBoard Interactor to Presenter Protocol

extension NoticeBoardPresenter: NoticeBoardInteractorPresenterProtocol {

	func set(title: String?) {
		view?.set(title: title)
	}

    func setBoard(imv: UIImageView) {
        view?.setBoard(i: imv)
    }
}
