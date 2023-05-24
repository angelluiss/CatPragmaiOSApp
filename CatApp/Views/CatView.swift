//
//  CatView.swift
//  CatApp
//
//  Created by Angel  Rangel  on 24/05/2023.
//

import SwiftUI

struct CatView: View {
    @StateObject private var catViewModel = CatViewModel(catRepository: CatRepository())
    
    var body: some View {
        NavigationView {
            List(catViewModel.catBreeds) { catBreed in
                NavigationLink(destination: CatDetailView(catBreed: catBreed, catViewModel: catViewModel)) {
                    VStack(alignment: .leading) {
                        Text(catBreed.name)
                            .font(.headline)
                        Text(catBreed.origin)
                            .font(.subheadline)
                        // Puedes mostrar más detalles del gato en la lista según tus necesidades
                    }
                }
            }
            .navigationBarTitle("Cat Breeds")
        }
        .onAppear {
            catViewModel.fetchCatBreeds()
        }
    }
}

struct CatView_Previews: PreviewProvider {
    static var previews: some View {
        CatView()
    }
}
