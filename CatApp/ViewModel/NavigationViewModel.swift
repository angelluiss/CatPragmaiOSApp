//
//  NavigationViewModel.swift
//  CatApp
//
//  Created by Angel  Rangel  on 24/05/2023.
//

import Foundation

import SwiftUI

class NavigationViewModel: ObservableObject {
    @Published var currentPage: Page = .selectPage
    
    func navigateToRoot() {
        currentPage = .selectPage
    }

    func navigateToDefault() {
        currentPage = .defaultPAge
    }
    

    func navigateToCustom() {
        currentPage = .personalizePage
    }

  
}
