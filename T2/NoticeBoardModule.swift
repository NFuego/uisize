//
//  NoticeBoardModule.swift
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

// MARK: -

/// Used to initialize the NoticeBoard VIPER module
final class NoticeBoardModule {

	// MARK: - Variables

	private(set) lazy var interactor: NoticeBoardInteractor = {
		return NoticeBoardInteractor()
	}()

	private(set) lazy var router: NoticeBoardRouter = {
		return NoticeBoardRouter()
	}()

	private(set) lazy var presenter: NoticeBoardPresenter = {
		return NoticeBoardPresenter(router: self.router, interactor: self.interactor)
	}()

	private(set) lazy var view: NoticeBoardViewController = {
		return NoticeBoardViewController(presenter: self.presenter)
	}()

	init() {
		presenter.view = view
		router.viewController = view
		interactor.presenter = presenter
	}
}

// MARK: - Module Protocol

extension NoticeBoardModule: ModuleProtocol {
	var viewController: UIViewController { return view }
}
