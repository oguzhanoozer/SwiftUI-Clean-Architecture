//
//  DatabaseServiceProtocol.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 14.01.2025.
//

import Foundation

protocol DatabaseServiceProtocol {
    var lastSavedItem: String { get }
    func configure() async
    func saveItem(item: String)
}
