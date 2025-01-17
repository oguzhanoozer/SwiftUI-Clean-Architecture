//
//  MockDatabaseService.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 14.01.2025.
//

import Foundation

class MockDatabaseService: DatabaseServiceProtocol {
    private(set) var lastSavedItem: String
    
    init(initialItem: String) {
        self.lastSavedItem = initialItem
    }
    
    func configure() async {
        print("Mock Database Service configured immediately!")
    }
    
    func saveItem(item: String) {
        lastSavedItem = item
        print("Mock Database Service - Item saved: \(item)")
    }
}
