//
//  View+Extension.swift
//  UpTodo
//
//  Created by oguzhan on 17.11.2024.
//

import SwiftUI

extension View{
    @ViewBuilder
    func hSpacing(_ alignment: Alignment = .center) -> some View{
        self.frame(maxWidth: .infinity, alignment: alignment)
    }
    
    @ViewBuilder
    func vSpacing(_ alignment: Alignment = .center) -> some View{
        self.frame(maxHeight: .infinity, alignment: alignment)
    }
 
    @available(iOSApplicationExtension, unavailable)
    var safeArea: UIEdgeInsets{
        if let windowScene = (UIApplication.shared.connectedScenes.first as? UIWindowScene){
            return windowScene.keyWindow?.safeAreaInsets ?? .zero
        }
        return .zero
    }
    
    func isSameDate(_ date1: Date, _ date2: Date) -> Bool{
        return Calendar.current.isDate(date1, inSameDayAs: date2)
    }
    
    func setStyle(_ textStyle: CustomTextStyle, color: Color? = nil, isScaled: Bool = true) -> some View{
        modifier(TextStyleModifier(textStyle: textStyle, color: color, isScaled: isScaled))
    }
    
    func withAlertManager(_ alertManager: AlertManager) -> some View {
        modifier(AlertViewModifier(alertManager: alertManager))
    }
}

