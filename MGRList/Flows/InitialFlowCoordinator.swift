//
//  InitialFlowCoordinator.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 31/07/23.
//

import Foundation
import UIKit

class InitialFlowCoordinator {
    var childViewController = [UIViewController]()
    var childCoordinator = [Coordinating]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    deinit {
        print("InitialFlowCoordinator - deinit")
        self.childViewController = []
        self.childCoordinator = []
    }
}

//MARK: - Coordinating
extension InitialFlowCoordinator: Coordinating {
    func start(){
       startOnboardingFlow()
    }
}

//MARK: - WelcomeCordinating
extension InitialFlowCoordinator {
    func startOnboardingFlow() {
        let coordinator = OnboardingFlowCoordinator(navigationController: navigationController)
        self.childCoordinator.append(coordinator)
        print(#function)
        print("InitialFlowCoordinator -- childViewController count: \(childViewController.count) - childCoordinator count: \(childCoordinator.count)")
        coordinator.start()
    }
}
