//
//  RegisterUserCoordinator.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 02/08/23.
//

import Foundation

enum RegisterUserTypeAction {
    case next
}

protocol RegisterUserCoordinating: AnyObject {
    func performAction(_ actionType: RegisterUserTypeAction)
}

class RegisterUserCoordinator {
    private weak var delegate: RegisterUserCoordinating?
    
    init(delegate: RegisterUserCoordinating) {
        self.delegate = delegate
    }
}

//MARK: - RegisterUserCoordinating
extension RegisterUserCoordinator: RegisterUserCoordinating {
    func performAction(_ actionType: RegisterUserTypeAction) {
        self.delegate?.performAction(actionType)
    }
}
