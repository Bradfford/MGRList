//
//  OnboardingFlowCoordinator.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 26/07/23.
//

import Foundation
import UIKit

public final class OnboardingFlowCoordinator {
    var childViewController = [UIViewController]()
    var childCoordinator = [Coordinating]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    deinit {
        print("OnboardingFlowCoordinator - deinit")
        self.childViewController = []
        self.childCoordinator = []
    }
}

//MARK: - Coordinating
extension OnboardingFlowCoordinator: Coordinating {
    func start() {
        let viewController = WelcomeFactory.make(delegate: self)
        childViewController.append(viewController)
        print(#function)
        print("OnboardingFlowCoordinator -- childViewController count: \(childViewController.count) - childCoordinator count: \(childCoordinator.count)")
        self.navigationController.pushViewController(viewController, animated: false)
    }
}

//MARK: - Auxiliary Functions
extension OnboardingFlowCoordinator {
    private func openRegisterUser() {
        let viewController = RegisterUserFactory.make(delegate: self)
        childViewController.append(viewController)
        print(#function)
        print("OnboardingFlowCoordinator -- childViewController count: \(childViewController.count) - childCoordinator count: \(childCoordinator.count)")
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func openHomeFlowCoordinator() {
        let coordinator = HomeFlowCoordinator(origin: self.navigationController)
        self.childCoordinator.append(coordinator)
        print(#function)
        print("OnboardingFlowCoordinator -- childViewController count: \(childViewController.count) - childCoordinator count: \(childCoordinator.count)")
        coordinator.start()
    }
}

//MARK: - WelcomeCoordinatorDelegate
extension OnboardingFlowCoordinator: WelcomeCoordinating {
    func performAction(_ actiontype: WelcomeActionType) {
        switch actiontype {
        case .next:
            openRegisterUser()
            print("------------------- next screen")
        }
    }
}

//MARK: - RegisterUserCoordinatorDelegate
extension OnboardingFlowCoordinator: RegisterUserCoordinating {
    func performAction(_ actionType: RegisterUserTypeAction) {
        switch actionType {
        case .next:
            openHomeFlowCoordinator()
            print("------------------- go to home flow coordinator")
        }
    }
}

