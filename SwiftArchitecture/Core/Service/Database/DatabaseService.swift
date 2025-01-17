//
//  DatabaseService.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 14.01.2025.
//

import Foundation

class DatabaseService: DatabaseServiceProtocol {
    private(set) var lastSavedItem: String
    
    init(initialItem: String) {
        self.lastSavedItem = initialItem
    }
    
    func configure() async {
        print("Database Service configuring...")
        try? await Task.sleep(nanoseconds: 5_000_000_000)
        print("Database Service configured!")
    }
    
    func saveItem(item: String) {
        lastSavedItem = item
    }
}
