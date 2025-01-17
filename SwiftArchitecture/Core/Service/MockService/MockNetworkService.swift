//
//  MockNetworkService.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 14.01.2025.
//

import Foundation

class MockNetworkService: NetworkServiceProtocol {
    private(set) var requestCount: Int
    
    init(initialCount: Int) {
        self.requestCount = initialCount
    }
    
    func configure() async {
        print("Mock Network Service configured immediately!")
    }
    
    func makeRequest() {
        requestCount += 1
        print("Mock Network Service - Request made")
    }
}
