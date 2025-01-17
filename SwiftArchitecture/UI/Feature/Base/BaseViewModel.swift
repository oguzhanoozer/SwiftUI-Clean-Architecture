//
//  BaseViewModel.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 24.12.2024.
//

import Foundation

class BaseViewModel: ObservableObject {
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    
    weak var alertManager: AlertManager?
    
    func startLoading() {
        isLoading = true
    }
    
    func stopLoading() {
        isLoading = false
    }
    
    func showError(_ message: String) {
//        errorMessage = message
        alertManager?.showError(
            message: "message",
            retryAction: { print("Retrying...") }
        )
    }
    
    func showAlert(){
        alertManager?.showAlert(
            "Hello",
            message: "This is a simple alert",
            action: { print("OK tapped") }
        )
    }
    
    
    @MainActor
    func initialize() async {
        // Base initialization logic
    }
    
    func showDestructiveAlert(){
        alertManager?.showDestructive(
            title: "Delete Item",
            message: "Are you sure you want to delete this item?",
            destructiveAction: { print("Item deleted") }
        )
    }
}
