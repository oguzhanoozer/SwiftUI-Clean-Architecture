//
//  AlertAction.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 25.12.2024.
//

import Foundation

struct AlertAction {
    let title: String
    let role: AlertActionRole
    let action: () -> Void
    
    enum AlertActionRole {
        case normal
        case cancel
        case destructive
    }
}
