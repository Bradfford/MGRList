//
//  HomeInteractor.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 05/08/23.
//

import Foundation

protocol HomeInteracting {
    func loadData()
}

final class HomeInteractor {
    private var presenter: HomePresenting
    
    init(presenter: HomePresenting) {
        self.presenter = presenter
    }
}

extension HomeInteractor: HomeInteracting {
    func loadData() {
        presenter.presentDidNextStep()
    }
}
