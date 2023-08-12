//
//  WelcomeString.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 12/08/23.
//

import Foundation

enum WelcomeString: String {
    case welcomeTitle
    case welcomeText
    case welcomeButton
    
    var localized: String {
        NSLocalizedString(String(describing: Self.self) + "_\(rawValue)", comment: "")
    }
}
