//
//  OverlordRouter.swift
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

/// Should be conformed to by the `OverlordRouter` and referenced by `OverlordPresenter`
protocol OverlordPresenterRouterProtocol: PresenterRouterProtocol {

}

// MARK: -

/// The Router for the Overlord module
final class OverlordRouter {

	// MARK: - Variables

	weak var viewController: UIViewController?
}

// MARK: - Router Protocol

extension OverlordRouter: RouterProtocol {

}

// MARK: Overlord Presenter to Router Protocol

extension OverlordRouter: OverlordPresenterRouterProtocol {

}
