//
//  ServiceContainer.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 14.01.2025.
//

import Foundation

class ServiceContainer {
    static let shared = ServiceContainer()
    
    let networkService: NetworkServiceProtocol
    let databaseService: DatabaseServiceProtocol
    
    private init(environment: Environment = .production) {
        switch environment {
        case .production:
            networkService = NetworkService(initialCount: 0)
            databaseService = DatabaseService(initialItem: "Initial Item")
        case .testing:
            networkService = MockNetworkService(initialCount: 0)
            databaseService = MockDatabaseService(initialItem: "Test Item")
        }
    }
    
    func configureServices() async {
        // Parallel configuration
        async let networkConfig = networkService.configure()
        async let databaseConfig = databaseService.configure()
        
        await [networkConfig, databaseConfig]
        
    }
    
    enum Environment {
        case production
        case testing
    }
}


#if DEBUG
extension ServiceContainer{
    static let testing = ServiceContainer(environment: .testing)
}
#endif



/// tabbar
/// storage - realm
/// logging
/// SSL pinning
/// Route yönetimi
/// Permission
/// Remote Config

