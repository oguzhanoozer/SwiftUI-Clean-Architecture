//
//  LocaleKEys.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 24.12.2024.
//

import Foundation

protocol Localizable: RawRepresentable where RawValue == String {
    var localized: String { get }
    func localized(with arguments: CVarArg...) -> String
}

enum LocaleKeys: String, Localizable {
    
    /// Auth
    ///
    case title = "title"
    case email = "email"
    
    /// Common
    ///
    case cancel = "cancel"
    case save = "save"
    case delete = "delete"
    
    /// Onboard
    ///
    case welcome_user = "welcome_user"
    case welcome = "welcome"
    
    /// Other
    ///
    case age = "age"

}

extension Localizable {
    /// Localized your key
    var localized: String {
        NSLocalizedString(rawValue, comment: "")
    }

    /// Localized your key
    /// - Parameter arguments: <#arguments
    /// - Returns: Value with params
    func localized(with arguments: CVarArg...) -> String {
        String(format: localized, arguments)
    }
}
