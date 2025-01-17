//
//  NetworkServiceProtocol.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 14.01.2025.
//

import Foundation

protocol NetworkServiceProtocol {
    var requestCount: Int { get }
    func configure() async
    func makeRequest()
}
