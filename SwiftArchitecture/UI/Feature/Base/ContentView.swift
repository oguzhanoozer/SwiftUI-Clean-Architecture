//
//  ContentView.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 24.12.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        NavigationStack{
//            HomeView(container: .shared)
//        }
        
            Text(LocaleKeys.welcome_user.localized(with: "oguzhan"))
            
            Text(LocaleKeys.age.localized(with: 10))
    }
}

#Preview {
    ContentView()
        .environment(\.locale, Locale(identifier: "tr_TR"))
}

