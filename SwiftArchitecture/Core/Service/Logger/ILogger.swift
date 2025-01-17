//
//  ILogingService.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 14.01.2025.
//

import Foundation

protocol ILogger {
    func log(_ level: LogLevel, _ message: String, file: String, function: String, line: Int)
}
