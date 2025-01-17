//
//  HomeView.swift
//  SwiftArchitecture
//
//  Created by oguzhan on 24.12.2024.
//

import SwiftUI

struct HomeView: View    {
    @StateObject private var viewModel: HomeViewModel
    
    init(container: ServiceContainer) {
        _viewModel = StateObject(wrappedValue: HomeViewModel(
            networkService: container.networkService,
            databaseService: container.databaseService
        ))
    }
    
    
    var body: some View {
        BaseView(viewModel: viewModel) { viewModel in
            
            NavigationStack{
                VStack {
                    Text("Request Count: \(viewModel.currentRequestCount)")
                    Text("Last Saved Item: \(viewModel.lastSavedItemName)")
                    
                    Button("Make Request") {
                        viewModel.makeNewRequest()
                    }
                    .padding(.bottom)
                    
                    Button("Show Destructive Alert") {
                        viewModel.showDestructiveAlert()
                    }
                    
                    Button("Show Error Alert") {
                        viewModel.showError("Error var babba")
                    }
                    
                    Button("Show Alert") {
                        viewModel.showAlert()
                    }
                    
                    Button("Save Item") {
                        viewModel.saveNewItem(item: "New Item")
                        logger.debug("Save Item Tapped")
                    }
                    .padding(.bottom)
                    
                    NavigationLink {
                        ProfileView()
                    } label: {
                        Text("Profile")
                            .setStyle(.title1Style)
                    }
                    .padding(.bottom)
                    
                    NavigationLink {
                        FavoriteView()
                    } label: {
                        Text("Favorite")
                            .setStyle(.title1Style)
                    }

                }
            }
        }
    }
}

#Preview {
    HomeView(container: .testing)
}

