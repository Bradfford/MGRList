//
//  HomeFlowCoordinator.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 05/08/23.
//

import UIKit

public final class HomeFlowCoordinator {
    var childViewController = [UIViewController]()
    var childCoordinator = [Coordinating]()
    var origin: UINavigationController
    let navigationController: UINavigationController = {
        return UINavigationController()
    }()
    
    init(origin: UINavigationController) {
        self.origin = origin
    }
    
    deinit {
        print("HomeFlowCoordinator - deinit")
        childViewController = []
        childCoordinator = []
    }
}

//MARK: - Coordinating
extension HomeFlowCoordinator: Coordinating {
    func start() {
        let viewController = HomeFactory.make(delegate: self)
        navigationController.setViewControllers([viewController], animated: true)
        childViewController.append(viewController)
        print(#function)
        print("HomeFlowCoordinator -- childViewController count: \(childViewController.count) - childCoordinator count: \(childCoordinator.count)")
        self.origin.show(navigationController, sender: self.origin)
    }
}

extension HomeFlowCoordinator: HomeCoordinating {
    func performAction(_ typeAction: HomeTypeAction) {
        self.navigationController.dismiss(animated: true) {
            print("close home")
        }
        
    }
    
    
}
