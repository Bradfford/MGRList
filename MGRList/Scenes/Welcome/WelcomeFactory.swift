//
//  WelcomeFactory.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 31/07/23.
//

import Foundation
import UIKit

public class WelcomeFactory {
    
    public static func make(delegate: WelcomeCoordinatorDelegate) -> UIViewController {
        let coordinator = WelcomeCoordinator(delegate: delegate)
        let presenter = WelcomePresenter(coordinator: coordinator)
        let interactor = WelcomeInteractor(presenter: presenter)
        let viewController = WelcomeViewController(interactor: interactor)
        presenter.viewController = viewController
        return viewController
    }
    
}
