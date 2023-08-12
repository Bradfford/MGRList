//
//  HomePresenter.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 05/08/23.
//

import Foundation

protocol HomePresenting: AnyObject {
    func presentSuccess()
    func presentError()
    func presentLoadState()
    func presentEndLoadState()
    func presentDidNextStep()
}

final class HomePresenter {
    private var coordinator: HomeCoordinating
    weak var viewController: HomeTypeDispaying?
    
    init(coordinator: HomeCoordinating) {
        self.coordinator = coordinator
    }
}

extension HomePresenter: HomePresenting {
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


