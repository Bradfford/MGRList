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
        let flowCoordinator = OnboardingFlowCoordinator(navigationController: navigationController)
        self.childCoordinator.append(flowCoordinator)
        flowCoordinator.start()
    }
    
}
