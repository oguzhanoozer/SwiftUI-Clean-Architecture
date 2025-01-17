//
//  TextStyle.swift
//  UpTodo
//
//  Created by oguzhan on 21.11.2024.
//

import SwiftUI

struct CustomTextStyle {
    let fontFamily: CustomFonts
    let styleType: CustomFontStyle
    let fontStyle: Font.TextStyle
    let lineHeight: Typography.LineHeight
    let defaultColor: Color
    
    init(
        fontFamily: CustomFonts,
        styleType: CustomFontStyle,
        fontStyle: Font.TextStyle,
        lineHeight: Typography.LineHeight = Typography.LineHeight.normal,
        defaultColor: Color = ThemeColors.text
    ) {
        self.fontFamily = fontFamily
        self.styleType = styleType
        self.fontStyle = fontStyle
        self.lineHeight = lineHeight
        self.defaultColor = defaultColor
    }
}

extension CustomTextStyle {
    // 34pt, Bold - Largest heading
    static let largeTitleStyle = CustomTextStyle(
        fontFamily: .poppins,
        styleType: .bold,
        fontStyle: .largeTitle,
        lineHeight: Typography.LineHeight.tight
    )
    
    // 28pt, Bold - Primary heading
    static let title1Style = CustomTextStyle(
        fontFamily: .poppins,
        styleType: .bold,
        fontStyle: .title,
        defaultColor: ThemeColors.text
    )
    
    // 22pt, Bold - Secondary heading
    static let title2Style = CustomTextStyle(
        fontFamily: .poppins,
        styleType: .bold,
        fontStyle: .title2,
        defaultColor: ThemeColors.textSecondary
    )
    
    // 20pt, Bold - Tertiary heading
    static let title3Style = CustomTextStyle(
        fontFamily: .poppins,
        styleType: .bold,
        fontStyle: .title3
    )
    
    // 17pt, Regular - Important heading
    static let headlineStyle = CustomTextStyle(
        fontFamily: .poppins,
        styleType: .regular,
        fontStyle: .headline
    )
    
    // 17pt, Regular - Normal text
    static let bodyStyle = CustomTextStyle(
        fontFamily: .poppins,
        styleType: .regular,
        fontStyle: .body
    )
    
    // 16pt, Medium - Emphasized text
    static let calloutMediumStyle = CustomTextStyle(
        fontFamily: .poppins,
        styleType: .medium,
        fontStyle: .callout
    )
    
    // 16pt, SemiBold - Alternative emphasized text
    static let calloutStyle = CustomTextStyle(
        fontFamily: .poppins,
        styleType: .semiBold,
        fontStyle: .callout
    )
    
    // 16pt, Bold - Bold emphasized text
    static let calloutBoldStyle = CustomTextStyle(
        fontFamily: .poppins,
        styleType: .bold,
        fontStyle: .callout
    )
    
    // 15pt, SemiBold - Subheading
    static let subheadlineStyle = CustomTextStyle(
        fontFamily: .poppins,
        styleType: .semiBold,
        fontStyle: .subheadline
    )
    
    // 13pt, Bold - Bold footnote
    static let footnoteStyle = CustomTextStyle(
        fontFamily: .poppins,
        styleType: .bold,
        fontStyle: .footnote
    )
    
    // 13pt, Medium - Medium footnote
    static let footnoteMediumStyle = CustomTextStyle(
        fontFamily: .poppins,
        styleType: .medium,
        fontStyle: .footnote
    )
    
    // 12pt, Medium - Small caption
    static let caption1Style = CustomTextStyle(
        fontFamily: .poppins,
        styleType: .medium,
        fontStyle: .caption
    )
    
    // 11pt, Medium - Smallest caption
    static let caption2Style = CustomTextStyle(
        fontFamily: .poppins,
        styleType: .medium,
        fontStyle: .caption2
    )
}

