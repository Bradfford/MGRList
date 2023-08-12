//
//  RegisterUserInteractor.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 02/08/23.
//

import Foundation

protocol RegisterUserInteracting: AnyObject {
    func loadData()
}

final class RegisterUserInteractor {
    
    var presenter: RegisterUserPresenting
    
    init(presenter: RegisterUserPresenting) {
        self.presenter = presenter
    }
}

extension RegisterUserInteractor: RegisterUserInteracting {
    func loadData() {
        presenter.presentDidNextStep()
    }
}
