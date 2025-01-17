//
//  CustomButtonStyle.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 17.01.2025.
//

import SwiftUI

enum CustomButtonStyle {
    case primary
    case secondary
    case destructive
    case outline
    case plain
    
    var backgroundColor: Color {
        switch self {
        case .primary:
            return ThemeColors.primary
        case .secondary:
            return .gray
        case .destructive:
            return ThemeColors.error
        case .outline, .plain:
            return .clear
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .outline:
            return ThemeColors.primary
        case .plain:
            return ThemeColors.primary
        case .primary, .secondary, .destructive:
            return ThemeColors.background
        }
    }
    
    var borderColor: Color {
        switch self {
        case .outline:
            return ThemeColors.primary
        default:
            return .clear
        }
    }
}
