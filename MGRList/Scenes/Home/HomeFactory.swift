//
//  HomeFactory.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 05/08/23.
//

import UIKit

public final class HomeFactory {
    static func make(delegate: HomeCoordinating) -> UIViewController {
        let coordinator = HomeCoordinator(delegate: delegate)
        let presenter = HomePresenter(coordinator: coordinator)
        let interactor = HomeInteractor(presenter: presenter)
        let viewController = HomeViewController(interactor: interactor)
        presenter.viewController = viewController
        return viewController
    }
}
