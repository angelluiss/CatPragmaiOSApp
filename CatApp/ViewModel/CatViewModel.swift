//
//  CatViewModel.swift
//  CatApp
//
//  Created by Angel  Rangel  on 24/05/2023.
//

import Foundation


class CatViewModel: ObservableObject {
    let catRepository: CatRepository
    @Published var catBreeds: [CatBreed] = []
    
    init(catRepository: CatRepository) {
        self.catRepository = catRepository
    }
    
    func fetchCatBreeds() {
        catRepository.getCats { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let catBreeds):
                    self?.catBreeds = catBreeds
                case .failure(let error):
                    // Manejo de errores
                    print(error)
                    break
                }
            }
        }
    }
}
