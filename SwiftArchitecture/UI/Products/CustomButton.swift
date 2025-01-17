//
//  CustomButton.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 17.01.2025.
//

import SwiftUI

struct CustomButton: View {
    private let scaleDefaultValue = 0.8  // Loading indicator scale
    
    // Configuration Properties
    let title: String                    // Button text
    let icon: String?                    // Optional SF Symbol name
    let style: CustomButtonStyle         // Visual style
    let size: CustomButtonSize           // Size configuration
    let isLoading: Bool                  // Loading state
    let isDisabled: Bool                 // Disabled state
    let action: () -> Void               // Button action
    
    init(
        title: String,
        icon: String? = nil,
        style: CustomButtonStyle = .primary,
        size: CustomButtonSize = .medium,
        isLoading: Bool = false,
        isDisabled: Bool = false,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.icon = icon
        self.style = style
        self.size = size
        self.isLoading = isLoading
        self.isDisabled = isDisabled
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: AppSize.Spacing.low.rawValue) {
                if isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: style.foregroundColor))
                        .scaleEffect(scaleDefaultValue)
                } else if let icon = icon {
                    Image(systemName: icon)
                        .font(.system(size: size.fontSize))
                }
                
                Text(title)
                    .font(.system(size: size.fontSize, weight: .semibold))
                    .lineLimit(AppSize.titleTextLineLimit)
            }
            .frame(maxWidth: .infinity)
            .frame(height: size.height)
            .padding(.horizontal, size.horizontalPadding)
            .foregroundColor(style.foregroundColor)
            .background(style.backgroundColor)
            .cornerRadius(size.height / 2)
            .overlay(
                RoundedRectangle(cornerRadius: size.height / 2)
                    .stroke(style.borderColor, lineWidth: CGFloat(AppSize.titleTextLineLimit))
            )
            .opacity(isDisabled ? AppSize.Opacity.high.rawValue : 1)
        }
        .disabled(isDisabled || isLoading)
    }
}

extension CustomButton {
    // Loading state modifier
    func isLoading(_ loading: Bool) -> CustomButton {
        CustomButton(
            title: title,
            icon: icon,
            style: style,
            size: size,
            isLoading: loading,
            isDisabled: isDisabled,
            action: action
        )
    }
    
    // Disabled state modifier
    func disabled(_ disabled: Bool) -> CustomButton {
        CustomButton(
            title: title,
            icon: icon,
            style: style,
            size: size,
            isLoading: isLoading,
            isDisabled: disabled,
            action: action
        )
    }
}

// MARK: - Preview
struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            // Primary Buttons
            CustomButton(
                title: "Primary Button",
                icon: "heart.fill",
                action: {}
            )
            
            CustomButton(
                title: "Loading Button",
                style: .primary,
                isLoading: true,
                action: {}
            )
            
            // Secondary Buttons
            CustomButton(
                title: "Secondary Button",
                icon: "star.fill",
                style: .secondary,
                action: {}
            )
            
            // Destructive Buttons
            CustomButton(
                title: "Delete",
                icon: "trash",
                style: .destructive,
                action: {}
            )
            
            // Outline Buttons
            CustomButton(
                title: "Outline Button",
                style: .outline,
                size: .large,
                action: {}
            )
            
            // Plain Buttons
            CustomButton(
                title: "Plain Button",
                icon: "arrow.right",
                style: .plain,
                action: {}
            )
            
            // Disabled Button
            CustomButton(
                title: "Disabled Button",
                style: .primary,
                isDisabled: true,
                action: {}
            )
        }
        .padding()
    }
}
