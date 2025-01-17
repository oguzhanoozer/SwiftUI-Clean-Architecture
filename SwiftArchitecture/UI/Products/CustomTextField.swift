//
//  CustomTextField.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 15.01.2025.
//

import SwiftUI

private let textOpacity = 0.7

struct CustomTextField: View {
    let title: String
    let hint: String
    let icon: String?
    let isSecure: Bool
    @Binding var text: String
    @State private var isShowPassword: Bool = false
    @FocusState private var isFocused: Bool
    
    init(
        title: String,
        hint: String,
        icon: String? = nil,
        isSecure: Bool = false,
        text: Binding<String>
    ) {
        self.title = title
        self.hint = hint
        self.icon = icon
        self.isSecure = isSecure
        self._text = text
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: AppSize.Spacing.low.rawValue) {
            Text(title)
                .setStyle(.footnoteMediumStyle, color: ThemeColors.text.opacity(textOpacity))
            
            HStack(spacing:  AppSize.Spacing.normal.rawValue) {
                if let icon = icon {
                    Image(systemName: icon)
                        .foregroundColor(.gray)
                }
                
                Group {
                    if isSecure {
                        if isShowPassword {
                            TextField(hint, text: $text)
                        } else {
                            SecureField(hint, text: $text)
                        }
                    } else {
                        TextField(hint, text: $text)
                    }
                }
                .focused($isFocused)
                
                if isSecure {
                    Button {
                        isShowPassword.toggle()
                    } label: {
                        Image(systemName: isShowPassword ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: RadiusItem.radiusMedium)
                    .stroke(isFocused ? Color.blue : Color.gray.opacity(AppSize.Opacity.high.rawValue), lineWidth: CGFloat(AppSize.titleTextLineLimit))
            )
        }
    }
}


struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            CustomTextField(
                title: "Email",
                hint: "Enter your email",
                icon: "envelope",
                text: .constant("")
            )
            
            CustomTextField(
                title: "Password",
                hint: "Enter your password",
                icon: "lock",
                isSecure: true,
                text: .constant("")
            )
        }
        .padding()
    }
}
