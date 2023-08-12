//
//  RegisterUserString.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 12/08/23.
//

import Foundation

enum RegisterUserString: String {
    case title
    case description
    case nameField
    case emailField
    case phoneNumberField
    case saveButton
    
    var localized: String {
        NSLocalizedString(String(describing: Self.self) + "_\(rawValue)", comment: "")
    }
}
