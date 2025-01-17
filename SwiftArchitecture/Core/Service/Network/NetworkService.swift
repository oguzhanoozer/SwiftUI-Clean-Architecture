//
//  NetworkService.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 14.01.2025.
//

import Foundation

class NetworkService: NetworkServiceProtocol {
    private(set) var requestCount: Int
    
    init(initialCount: Int) {
        self.requestCount = initialCount
    }
    
    func configure() async {
        print("Network Service configuring...")
        try? await Task.sleep(nanoseconds: 2_000_000_000)
        print("Network Service configured!")
    }
    
    func makeRequest() {
        requestCount += 1
    }
}
