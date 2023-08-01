//
//  WelcomePresenter.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 31/07/23.
//

import Foundation

protocol WelcomePresenting {
    func presentSuccess()
    func presentError()
    func presentLoadState()
    func presentEndLoadState()
    func presentDidNextStep()
}

class WelcomePresenter {
    var coordinator: WelcomeCoordinating
    var viewController: WelcomeTypeDisplaying?
    
    init(coordinator: WelcomeCoordinating) {
        self.coordinator = coordinator
    }
}

extension WelcomePresenter: WelcomePresenting {
    func presentSuccess() {
        coordinator.performAction(actiontype: .next)
    }
    
    func presentError() {
        
    }
    
    func presentLoadState() {
        
    }
    
    func presentEndLoadState() {
        
    }
    
    func presentDidNextStep() {
        
    }
    
    
}
