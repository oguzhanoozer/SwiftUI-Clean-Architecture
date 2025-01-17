//
//  HomeViewModel.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 24.12.2024.
//

import Foundation

class HomeViewModel: BaseViewModel, NamedView {
    static var viewName: String = "HomeView"
    
    private let networkService: NetworkServiceProtocol
    private let databaseService: DatabaseServiceProtocol
    
    @Published private(set) var currentRequestCount: Int = 0
    @Published private(set) var lastSavedItemName: String = ""
    @Published var welcomeMessage: String = ""
    
    init(networkService: NetworkServiceProtocol, databaseService: DatabaseServiceProtocol) {
        self.networkService = networkService
        self.databaseService = databaseService
        
        super.init()
        self.updateValues()
    }
    
    
    override func initialize() async {
        startLoading()
        // Simulate network call
        try? await Task.sleep(nanoseconds: 1_000_000_000)
        welcomeMessage = "Welcome to Home!"
        stopLoading()
    }
    
    
    private func updateValues() {
        currentRequestCount = networkService.requestCount
        lastSavedItemName = databaseService.lastSavedItem
    }
    
    func makeNewRequest() {
        networkService.makeRequest()
        currentRequestCount = networkService.requestCount
    }
    
    func saveNewItem(item: String) {
        databaseService.saveItem(item: item)
        lastSavedItemName = databaseService.lastSavedItem
    }
}
