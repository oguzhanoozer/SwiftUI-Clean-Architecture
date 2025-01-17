//
//  TextStyleModifier.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 17.01.2025.
//

import SwiftUI

struct TextStyleModifier: ViewModifier{
    let textStyle: CustomTextStyle
    var color: Color?
    var isScaled: Bool
    
    init(textStyle: CustomTextStyle, color: Color? = nil, isScaled: Bool = true) {
        self.textStyle = textStyle
        self.color = color
        self.isScaled = isScaled
    }
    
    func body(content: Content) -> some View {
        content
            .font(getFont())
            .foregroundStyle(color ?? textStyle.defaultColor)
            .lineSpacing(getLineSpacing())
    }
    
    func getFont() -> Font{
        let fontName = textStyle.fontFamily.rawValue + textStyle.styleType.rawValue
        
        if isScaled{
            return Font.custom(fontName, size: textStyle.fontStyle.size, relativeTo: textStyle.fontStyle)
        }
        return Font.custom(fontName, size: textStyle.fontStyle.size)
    }
    
    func getLineSpacing() -> CGFloat{
        return (textStyle.fontStyle.size * textStyle.lineHeight.rawValue) - textStyle.fontStyle.size
    }
}
