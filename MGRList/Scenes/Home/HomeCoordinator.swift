//
//  HomeCoordinator.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 05/08/23.
//

import Foundation

enum HomeTypeAction {
    case next
}

protocol HomeCoordinating: AnyObject {
    func performAction(_ typeAction: HomeTypeAction)
}

final class HomeCoordinator {
    private weak var delegate: HomeCoordinating?
    
    init(delegate: HomeCoordinating) {
        self.delegate = delegate
    }
}

extension HomeCoordinator: HomeCoordinating {
    func performAction(_ typeAction: HomeTypeAction) {
        delegate?.performAction(typeAction)
    }
}


