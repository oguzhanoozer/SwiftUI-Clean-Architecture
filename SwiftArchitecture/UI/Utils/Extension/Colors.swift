//
//  Colors.swift
//  UpToDo
//
//  Created by oguzhan on 27.10.2024.
//

import Foundation
import SwiftUI

extension Color{
    
    public static var categoryCreateNew: Color { Color("createNew")}
    public static var categoryDesign: Color { Color("design")}
    public static var categoryGrocery: Color { Color("grocery")}
    public static var categoryHealth: Color { Color("health")}
    public static var categoryHome: Color { Color("home")}
    public static var categoryMovie: Color { Color("movie")}
    public static var categoryMusic: Color { Color("music")}
    public static var categorySocial: Color { Color("social")}
    public static var categorySport: Color { Color("sport")}
    public static var categoryUniversity: Color { Color("university")}
    public static var categoryWork: Color { Color("work")}

}


enum ThemeColors {
    // MARK: - Ana Renkler
    static var primary: Color { Color("ThemePrimary") }
    static var secondary: Color { Color("ThemeSecondary") }
    static var tertiary: Color { Color("ThemeTertiary") }
    
    // MARK: - Arka Plan Renkleri
    static var background: Color { Color("ThemeBackground") }
    static var surface: Color { Color("ThemeSurface") }
    static var surfaceSecondary: Color { Color("ThemeSurfaceSecondary") }
    
    // MARK: - Metin Renkleri
    static var text: Color { Color("ThemeText") }
    static var textSecondary: Color { Color("ThemeTextSecondary") }
    static var textTertiary: Color { Color("ThemeTextTertiary") }
    
    // MARK: - Durum Renkleri
    static var success: Color { Color("ThemeSuccess") }
    static var warning: Color { Color("ThemeWarning") }
    static var error: Color { Color("ThemeError") }
    static var info: Color { Color("ThemeInfo") }
    
    // MARK: - Ayırıcı/Kenar Renkleri
    static var border: Color { Color("ThemeBorder") }
    static var progress: Color { Color("ThemeProgress") }
    static var divider: Color { Color("ThemeDivider") }
    
    // MARK: - Etkileşim Renkleri
    static var link: Color { Color("ThemeLink") }
    static var overlay: Color { Color("ThemeOverlay") }
    
    static var ozi: Color { Color("ozi") }
}
