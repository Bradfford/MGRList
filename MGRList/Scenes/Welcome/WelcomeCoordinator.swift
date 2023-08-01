//
//  WelcomeCoordinator.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 31/07/23.
//

import Foundation

public enum WelcomeActionType {
    case next
}

protocol WelcomeCoordinating: AnyObject {
    func performAction(actiontype: WelcomeActionType)
}

public protocol WelcomeCoordinatorDelegate: AnyObject {
    func sendAction(actiontype: WelcomeActionType)
}

final class WelcomeCoordinator {
    
    private weak var delegate: WelcomeCoordinatorDelegate?
    
    init(delegate: WelcomeCoordinatorDelegate?) {
        self.delegate = delegate
    }
}

extension WelcomeCoordinator: WelcomeCoordinating {
    func performAction(actiontype: WelcomeActionType) {
        switch actiontype {
        case .next:
            self.delegate?.sendAction(actiontype: actiontype)
        }
    }
}
