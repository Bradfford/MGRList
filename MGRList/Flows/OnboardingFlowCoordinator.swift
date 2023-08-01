//
//  OnboardingFlowCoordinator.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 26/07/23.
//

import Foundation
import UIKit

class OnboardingFlowCoordinator: Coordinating {
    
    var childViewController = [UIViewController]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    deinit {
        self.childViewController = []
    }
    
    func start() {
        let viewController = WelcomeFactory.make(delegate: self)
        childViewController.append(viewController)
        self.navigationController.pushViewController(viewController, animated: false)
    }
    
}

extension OnboardingFlowCoordinator: WelcomeCoordinatorDelegate {
    func sendAction(actiontype: WelcomeActionType) {
        switch actiontype {
        case .next:
            print("------------------- next screen")
        }
    }
}

