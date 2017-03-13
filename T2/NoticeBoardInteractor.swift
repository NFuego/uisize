//
//  NoticeBoardInteractor.swift
//  Project: T2
//
//  Module: NoticeBoard
//
//  By zcon 2017/3/13
//  test 2017年
//

// MARK: Imports

import Foundation
import UIKit
import SwiftyVIPER

// MARK: Protocols

/// Should be conformed to by the `NoticeBoardInteractor` and referenced by `NoticeBoardPresenter`
protocol NoticeBoardPresenterInteractorProtocol {
	/// Requests the title for the presenter
	func requestTitle()
    func reqBoards()
}

// MARK: -

/// The Interactor for the NoticeBoard module
final class NoticeBoardInteractor {

	// MARK: - Variables

	weak var presenter: NoticeBoardInteractorPresenterProtocol?
}

// MARK: - NoticeBoard Presenter to Interactor Protocol

extension NoticeBoardInteractor: NoticeBoardPresenterInteractorProtocol {

	func requestTitle() {
		presenter?.set(title: "NoticeBoard")
	}

    func reqBoards() {
        // todo donwload image
        let img = UIImageView(image: UIImage(named:"board"))
        presenter?.setBoard(imv:img)
    }
}
