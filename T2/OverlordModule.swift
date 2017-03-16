//
//  OverlordModule.swift
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

// MARK: -

/// Used to initialize the Overlord VIPER module
final class OverlordModule {

	// MARK: - Variables

	private(set) lazy var interactor: OverlordInteractor = {
		return OverlordInteractor()
	}()

	private(set) lazy var router: OverlordRouter = {
		return OverlordRouter()
	}()

	private(set) lazy var presenter: OverlordPresenter = {
		return OverlordPresenter(router: self.router, interactor: self.interactor)
	}()

	private(set) lazy var view: OverlordViewController = {
		return OverlordViewController(presenter: self.presenter)
	}()

	init() {
		presenter.view = view
		router.viewController = view
		interactor.presenter = presenter
	}
}

// MARK: - Module Protocol

extension OverlordModule: ModuleProtocol {
	var viewController: UIViewController { return view }
}
