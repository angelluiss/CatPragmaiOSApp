//
//  CatListOfCardsView.swift
//  CatApp
//
//  Created by Angel  Rangel  on 24/05/2023.
//

import SwiftUI

struct CatListOfCardsView: View {
    @StateObject private var catViewModel = CatViewModel(catRepository: CatRepository())
    @EnvironmentObject private var viewModelNavigation: NavigationViewModel

    
    var body: some View {
        NavigationView {
            List(catViewModel.catBreeds) { catBreed in
                CatDetailView(catBreed: catBreed, catViewModel: catViewModel)
            }
            .navigationBarTitle("Cat Breeds")
            .navigationBarItems(leading:
                                    Button(action: {
                viewModelNavigation.navigateToRoot()
            }) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
            })
        }
       
        .onAppear {
            catViewModel.fetchCatBreeds()
        }
       
    }
}

struct CatListOfCardsView_Previews: PreviewProvider {
    static var previews: some View {
        CatListOfCardsView()
    }
}
