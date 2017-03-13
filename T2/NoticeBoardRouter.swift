//  NoticeBoardRouter.swift
//  Module: NoticeBoard

// MARK: Imports

import UIKit
import SwiftyVIPER

// MARK: Protocols

/// Should be conformed to by the `NoticeBoardRouter` and referenced by `NoticeBoardPresenter`
protocol NoticeBoardPresenterRouterProtocol: PresenterRouterProtocol {

}

// MARK: -

/// The Router for the NoticeBoard module
final class NoticeBoardRouter {

	// MARK: - Variables

	weak var viewController: UIViewController?
}

// MARK: - Router Protocol

extension NoticeBoardRouter: RouterProtocol {

}

// MARK: NoticeBoard Presenter to Router Protocol

extension NoticeBoardRouter: NoticeBoardPresenterRouterProtocol {

}
