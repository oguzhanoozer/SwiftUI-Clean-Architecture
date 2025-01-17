//
//  SwiftArchitectureApp.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 24.12.2024.
//

import SwiftUI

@main
struct SwiftArchitectureApp: App {
    @StateObject private var alertManager = AlertManager()
    let container = ServiceContainer.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(alertManager)
                .task {
                    await container.configureServices()
                }
        }
    }
}
