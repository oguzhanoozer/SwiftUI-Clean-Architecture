//
//  AlertMAnage.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 25.12.2024.
//

import Foundation

class AlertManager: ObservableObject {
    @Published var isPresented = false
    @Published var alertType: AlertContent?
    @Published var primaryAction: AlertAction?
    @Published var secondaryAction: AlertAction?
    
    // Basit alert displaying
    func showAlert(_ title: String, message: String, action: (() -> Void)? = nil) {
        show(
            type: .init(title: title, message: message),
            primaryButton: AlertAction(
                title: "OK",
                role: .normal,
                action: { action?() }
            )
        )
    }
    
    // Error alert displaying
    func showError(_ title: String = "Error", message: String, retryAction: (() -> Void)? = nil) {
        show(
            type: .init(title: title, message: message),
            primaryButton: AlertAction(
                title: "Retry",
                role: .normal,
                action: { retryAction?() }
            ),
            secondaryButton: AlertAction(
                title: "Cancel",
                role: .cancel,
                action: {}
            )
        )
    }
    
    // Destructive alert displaying
    func showDestructive(title: String, message: String, destructiveAction: @escaping () -> Void) {
        show(
            type: .init(title: title, message: message),
            primaryButton: AlertAction(
                title: "Delete",
                role: .destructive,
                action: destructiveAction
            ),
            secondaryButton: AlertAction(
                title: "Cancel",
                role: .cancel,
                action: {}
            )
        )
    }
    
    // Original show method
    func show(
        type: AlertContent,
        primaryButton: AlertAction,
        secondaryButton: AlertAction? = nil
    ) {
        self.alertType = type
        self.primaryAction = primaryButton
        self.secondaryAction = secondaryButton
        self.isPresented = true
    }
}
