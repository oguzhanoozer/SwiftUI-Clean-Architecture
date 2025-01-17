//
//  LoggingService.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 14.01.2025.
//

import Foundation

final class Logger: ILogger {
    static let shared = Logger()
    private init() {}
    
    func log(_ level: LogLevel,
             _ message: String,
             file: String = #file,
             function: String = #function,
             line: Int = #line) {
        let fileName = (file as NSString).lastPathComponent
        let timestamp = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .medium)
        
        #if DEBUG
        print("\(timestamp) [\(level.rawValue)] [\(fileName):\(line)] \(function) -> \(message)")
        #endif
        
        /// TODO: send to firebase analystic
    }
}
