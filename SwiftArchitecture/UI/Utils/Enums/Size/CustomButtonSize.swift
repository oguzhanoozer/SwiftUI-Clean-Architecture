//
//  CustomButtonSize.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 17.01.2025.
//

import Foundation

enum CustomButtonSize {
    case small
    case medium
    case large
    
    var height: CGFloat {
        switch self {
        case .small:
            return 32
        case .medium:
            return 44
        case .large:
            return 56
        }
    }
    
    var horizontalPadding: CGFloat {
        switch self {
        case .small:
            return 16
        case .medium:
            return 24
        case .large:
            return 32
        }
    }
    
    var fontSize: CGFloat {
        switch self {
        case .small:
            return 14
        case .medium:
            return 16
        case .large:
            return 18
        }
    }
}
