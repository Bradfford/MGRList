//
//  RegisterUserPresenter.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 02/08/23.
//

import Foundation

protocol RegisterUserPresenting: AnyObject {
    func presentSuccess()
    func presentError()
    func presentLoadState()
    func presentEndLoadState()
    func presentDidNextStep()
}

final class RegisterUserPresenter {
    private var coordinator: RegisterUserCoordinating
    weak var viewController: RegisterUserTypeDisplaying?
    
    init(coordinator: RegisterUserCoordinating) {
        self.coordinator = coordinator
    }
}
 //MARK: - RegisterUserPresenting
extension RegisterUserPresenter: RegisterUserPresenting {
    func presentSuccess() {
            
    }
    
    func presentError() {
        
    }
    
    func presentLoadState() {
        
    }
    
    func presentEndLoadState() {
        
    }
    
    func presentDidNextStep() {
        coordinator.performAction(.next)
    }
    
    
}
