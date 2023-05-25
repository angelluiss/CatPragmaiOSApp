//
//  RootView.swift
//  CatApp
//
//  Created by Angel  Rangel  on 24/05/2023.
//

import SwiftUI

struct RootView: View {
    @StateObject private var viewModel = NavigationViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                switch viewModel.currentPage {
                case .selectPage:
                    SelectPageView()
                case .defaultPAge:
                    CatListOfCardsView()
                case .personalizePage:
                    CatView()
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .environmentObject(viewModel)
            .animation(.easeInOut) // Agregar animación de transición
            .transition(.slide)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
