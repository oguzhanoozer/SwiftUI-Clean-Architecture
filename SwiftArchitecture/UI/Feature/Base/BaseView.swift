//
//  BaseView.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 24.12.2024.
//

import Foundation
import SwiftUI

protocol NamedView{
    static var viewName: String { get }
}

extension NamedView{
    static var viewName: String{
        String(describing: self)
    }
}

struct BaseView<VM: BaseViewModel & NamedView, Content: View>: View {
    @EnvironmentObject private var alertManager: AlertManager
    
    @StateObject var viewModel: VM
    let content: (VM) -> Content
    
    
    init(viewModel: VM, @ViewBuilder content: @escaping (VM) -> Content) {
        _viewModel = StateObject(wrappedValue: viewModel)
        self.content = content
    }
    
    var body: some View {
        ZStack {
            content(viewModel)
            
            if viewModel.isLoading {
                ThemeColors.background.opacity(0.5)
                    .edgesIgnoringSafeArea(.all)
                
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: ThemeColors.progress))
                    .scaleEffect(1.5)
            }
        }
        .onAppear {
            logger.debug("\(VM.viewName) appeared")
            viewModel.alertManager = alertManager
            
        }
        .onDisappear {
            logger.debug("\(VM.viewName) disappeared")
        }
        
        .withAlertManager(alertManager)
        
        .alert("Error", isPresented: Binding(
            get: { viewModel.errorMessage != nil },
            set: { if !$0 { viewModel.errorMessage = nil } }
        )) {
            Button("OK") {
                viewModel.errorMessage = nil
            }
        } message: {
            Text(viewModel.errorMessage ?? "")
        }
        .task {
            await viewModel.initialize()
        }
    }
}
