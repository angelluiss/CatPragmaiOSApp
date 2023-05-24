//
//  CatRepository.swift
//  CatApp
//
//  Created by Angel  Rangel  on 24/05/2023.
//

import Foundation



class CatRepository {
    func getCats(completion: @escaping (Result<[CatBreed], Error>) -> Void) {
        guard let url = URL(string: "https://api.thecatapi.com/v1/breeds") else {
            completion(.failure(NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"])))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "No data received"])))
                return
            }
            
            do {
                let breeds = try JSONDecoder().decode([CatBreed].self, from: data)
                completion(.success(breeds))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
    
    func getImageURL(for imageId: String) -> URL? {
        let imageURLString = "https://cdn2.thecatapi.com/images/\(imageId).jpg"
        return URL(string: imageURLString)
    }
}

