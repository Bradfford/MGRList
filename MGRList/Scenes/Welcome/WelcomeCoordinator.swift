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
    func performAction(_ actiontype: WelcomeActionType)
}

final class WelcomeCoordinator {
    private weak var delegate: WelcomeCoordinating?
    
    init(delegate: WelcomeCoordinating?) {
        self.delegate = delegate
    }
}

extension WelcomeCoordinator: WelcomeCoordinating {
    func performAction(_ actiontype: WelcomeActionType) {
        self.delegate?.performAction(actiontype)
    }
}
