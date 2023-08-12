//
//  RegisterUserFactory.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 02/08/23.
//

import Foundation
import UIKit

public class RegisterUserFactory {
    static func make(delegate: RegisterUserCoordinating) -> UIViewController {
        let coordinator = RegisterUserCoordinator(delegate: delegate)
        let presenter = RegisterUserPresenter(coordinator: coordinator)
        let interactor = RegisterUserInteractor(presenter: presenter)
        let viewController = RegisterUserViewController(interactor: interactor)
        presenter.viewController = viewController
        return viewController
    }
}
