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

final class WelcomePresenter {
    private var coordinator: WelcomeCoordinating
    weak var viewController: WelcomeTypeDisplaying?
    
    init(coordinator: WelcomeCoordinating) {
        self.coordinator = coordinator
    }
}

extension WelcomePresenter: WelcomePresenting {
    func presentSuccess() {
        coordinator.performAction(.next)
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
