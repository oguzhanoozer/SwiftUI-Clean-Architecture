//
//  ProfileViewModel.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 24.12.2024.
//
import SwiftUI

class ProfileViewModel: BaseViewModel, NamedView {
    static var viewName: String = "ProfileView"
    
    @Published var userName: String = ""
    
    override func initialize() async {
        startLoading()
        // Simulate network call
        try? await Task.sleep(nanoseconds: 5_000_000_000)
        userName = "John Doe"
        stopLoading()
        
//        showError("oziiiii")
    }
}
