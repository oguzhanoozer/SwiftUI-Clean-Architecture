//
//  Typography.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 14.01.2025.
//

import Foundation

enum Typography {
    enum Size {
        static let largeTitle: CGFloat = 34  // Largest heading
        static let title1: CGFloat = 28      // Primary heading
        static let title2: CGFloat = 22      // Secondary heading
        static let title3: CGFloat = 20      // Tertiary heading
        static let headline: CGFloat = 17    // Important heading
        static let body: CGFloat = 17        // Normal text
        static let callout: CGFloat = 16     // Emphasized text
        static let subheadline: CGFloat = 15 // Subheading
        static let footnote: CGFloat = 13    // Footnote
        static let caption1: CGFloat = 12    // Small caption
        static let caption2: CGFloat = 11    // Smallest caption
    }
    
    enum LineHeight: CGFloat {
        case tight = 1.2    // Compact spacing
        case normal = 1.5   // Standard spacing
        case loose = 1.8    // Relaxed spacing
    }
}
