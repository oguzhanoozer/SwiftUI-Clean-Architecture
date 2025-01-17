//
//  ProfileView.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 24.12.2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        BaseView(viewModel: ProfileViewModel()) { viewModel in
            VStack(alignment: .leading, spacing: 10) {
                
                Text("Ana Başlık")
                    .setStyle(.title1Style, color: ThemeColors.ozi, isScaled: true)
                
                Text("Alt Başlık")
                    .setStyle(.title2Style, color: .gray, isScaled: false)
                
                Text("Alt Başlık")
                    .setStyle(.title2Style, color: .gray, isScaled: true)
                
                Text("Normal metin içeriği buraya gelecek...")
                    .font(.custom("Arial", size: 17, relativeTo: .body))
                
                Text("Not: Küçük detaylar")
                    .font(.custom("Arial", size: 12, relativeTo: .caption))
            }
            .padding()
        }
    }
}

#Preview {
    ProfileView()
        .environmentObject(AlertManager())
//        .environment(\.locale, Locale(identifier: ""))
    
}
