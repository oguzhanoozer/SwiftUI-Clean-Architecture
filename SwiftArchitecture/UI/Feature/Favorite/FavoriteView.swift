//
//  FavoriteView.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 15.01.2025.
//

import SwiftUI

struct FavoriteView: View {
    @StateObject private var viewModel = FavoriteViewModel()

    
    var body: some View {
        BaseView(viewModel: viewModel) { viewModel in
            ScrollView {
                refreshHeader
                contentList
                    .overlay(scrollOffsetDetector)
            }
            .onPreferenceChange(OffsetKey.self) { offset in
                handleScrollOffset(offset)
            }
        }
        
    }
    
    private var refreshHeader: some View {
         Group {
             if viewModel.isRefreshing {
                 ProgressView()
                     .padding()
             }
         }
     }
     
     private var contentList: some View {
         LazyVStack(spacing: 0) {
             ForEach(viewModel.list, id: \.self) { index in
                 Text("row \(index)")
                     .padding()
                     .frame(maxWidth: .infinity)
             }
         }
     }
     
     private var scrollOffsetDetector: some View {
         GeometryReader { geo in
             let offset = -geo.frame(in: .global).origin.y
             
             Color.clear.preference(
                 key: OffsetKey.self,
                 value: shouldUpdateOffset(for: offset) ? offset : 0
             )
         }
     }
     
     private func shouldUpdateOffset(for offset: CGFloat) -> Bool {
         offset < -viewModel.pullThreshold && !viewModel.isRefreshing
     }
     
     private func handleScrollOffset(_ offset: CGFloat) {
         guard offset < -viewModel.pullThreshold && !viewModel.isRefreshing else { return }
         
         Task {
             await viewModel.refresh()
         }
     }
}

#Preview {
    FavoriteView()
}
