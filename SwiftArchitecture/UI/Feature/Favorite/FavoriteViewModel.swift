//
//  FavoriteViewModel.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 15.01.2025.
//

import Foundation

@MainActor
class FavoriteViewModel: BaseViewModel, NamedView {
    static var viewName: String = "FavoriteView"
    
    @Published private(set) var isRefreshing = false
    let pullThreshold: CGFloat = 180
    
    var list: [Int] = [1,2,3,4,5,6,7,8,9,10]
    
    override func initialize() async {
        startLoading()
        // Simulate network call
//        try? await Task.sleep(nanoseconds: 2_000_000_000)
        stopLoading()
        
        //        showError("oziiiii")
    }
    
    
    
    func refresh() async {
        isRefreshing = true
//        defer { isRefreshing = false }
        
        // Refresh işlemleri
        print(isRefreshing)
        try? await Task.sleep(nanoseconds: 3_000_000_000)
        list.shuffle()
        isRefreshing = false
        print(isRefreshing)

    }
}
