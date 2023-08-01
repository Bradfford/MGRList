//
//  WelcomeInteractor.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 31/07/23.
//

import Foundation

protocol WelcomeInteracting {
    func loadData()
}

final class WelcomeInteractor {
    
    var presenter: WelcomePresenting
    
    init(presenter: WelcomePresenting) {
        self.presenter = presenter
    }
    
}

//MARK: - WelcomeInteracting
extension WelcomeInteractor: WelcomeInteracting {
    func loadData() {
        presenter.presentSuccess()
    }
}
