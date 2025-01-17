//
//  AlertWork.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 25.12.2024.
//

import Foundation
import SwiftUI

// MARK: - Usage Example
struct ContentAlertView: View {
    @EnvironmentObject private var alertManager: AlertManager

       var body: some View {
           VStack(spacing: 20) {
               // Basit alert
               Button("Show Simple Alert") {
                   alertManager.showAlert(
                       "Hello",
                       message: "This is a simple alert",
                       action: { print("OK tapped") }
                   )
               }
               
               // Error alert
               Button("Show Error") {
                   alertManager.showError(
                       message: "Something went wrong",
                       retryAction: { print("Retrying...") }
                   )
               }
               
               // Destructive alert
               Button("Delete Item") {
                   alertManager.showDestructive(
                       title: "Delete Item",
                       message: "Are you sure you want to delete this item?",
                       destructiveAction: { print("Item deleted") }
                   )
               }
           }
           .withAlertManager(alertManager)
       }
   }

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentAlertView()
            .environmentObject(AlertManager())
    }
}
