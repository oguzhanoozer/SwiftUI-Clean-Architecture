//
//  Fonts.swift
//  UpTodo
//
//  Created by oguzhan on 21.11.2024.
//

import SwiftUI

// MARK: - Font Style Extension
extension Font.TextStyle {
    var size: CGFloat {
        switch self {
        case .largeTitle: return Typography.Size.largeTitle
        case .title: return Typography.Size.title1
        case .title2: return Typography.Size.title2
        case .title3: return Typography.Size.title3
        case .headline: return Typography.Size.headline
        case .body: return Typography.Size.body
        case .callout: return Typography.Size.callout
        case .subheadline: return Typography.Size.subheadline
        case .footnote: return Typography.Size.footnote
        case .caption: return Typography.Size.caption1
        case .caption2: return Typography.Size.caption2
        @unknown default:
            return Typography.Size.body
        }
    }
}


//extension Font{
//    static func customFont(font: CustomFonts, style: CustomFontStyle,
//                           fontStyle: Font.TextStyle, isScaled: Bool = true) -> Font{
//        let fontName = font.rawValue + style.rawValue
//        return Font.custom(fontName, size: fontStyle.size)
//    }
//}
