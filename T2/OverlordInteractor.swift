//
//  OverlordInteractor.swift
//  Project: T2
//
//  Module: Overlord
//
//  By zcon 2017/3/15
//  test 2017年
//

// MARK: Imports

import Foundation

import SwiftyVIPER

// MARK: Protocols

/// Should be conformed to by the `OverlordInteractor` and referenced by `OverlordPresenter`
protocol OverlordPresenterInteractorProtocol {
	/// Requests the title for the presenter
	func requestTitle()
}

// MARK: -

/// The Interactor for the Overlord module
final class OverlordInteractor {

	// MARK: - Variables

	weak var presenter: OverlordInteractorPresenterProtocol?
}

// MARK: - Overlord Presenter to Interactor Protocol

extension OverlordInteractor: OverlordPresenterInteractorProtocol {

	func requestTitle() {
		presenter?.set(title: "Overlord")
	}
}
