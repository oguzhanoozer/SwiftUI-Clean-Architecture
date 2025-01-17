//
//  AlertViewModifier.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 25.12.2024.
//

import Foundation
import SwiftUI

struct AlertViewModifier: ViewModifier {
    @ObservedObject var alertManager: AlertManager
    
    func body(content: Content) -> some View {
        content.alert(
            alertManager.alertType?.title ?? "",
            isPresented: $alertManager.isPresented,
            actions: {
                alertButtons
            },
            message: {
                if let message = alertManager.alertType?.message {
                    Text(message)
                }
            }
        )
    }
    
    @ViewBuilder
    private var alertButtons: some View {
        if let primaryAction = alertManager.primaryAction {
            Button(role: buttonRole(for: primaryAction.role)) {
                primaryAction.action()
            } label: {
                Text(primaryAction.title)
            }
        }
        
        if let secondaryAction = alertManager.secondaryAction {
            Button(role: buttonRole(for: secondaryAction.role)) {
                secondaryAction.action()
            } label: {
                Text(secondaryAction.title)
            }
        }
    }
    
    private func buttonRole(for role: AlertAction.AlertActionRole) -> ButtonRole? {
        switch role {
        case .normal:
            return nil
        case .cancel:
            return .cancel
        case .destructive:
            return .destructive
        }
    }
}
