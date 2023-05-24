//
//  CardComponent.swift
//  CatApp
//
//  Created by Angel  Rangel  on 24/05/2023.
//

import SwiftUI

struct CatDetailView: View {
    let catBreed: CatBreed
    let catViewModel: CatViewModel
    
    var body: some View {
        VStack {
            // Puedes mostrar más detalles del gato en la vista de detalle según tus necesidades
            Text(catBreed.name)
                .font(.title)
                .foregroundColor(Color.gray)
            
            Text(catBreed.description)
                .padding()
                .foregroundColor(Color.gray)
            // Puedes incluir la imagen utilizando la URL del repositorio de gatos
            if let imageURL = catViewModel.catRepository.getImageURL(for: catBreed.referenceImageID ?? "") {
                AsyncImage(url: imageURL) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    case .failure:
                        // Manejo de errores
                        Image(systemName: "photo")
                    @unknown default:
                        EmptyView()
                    }
                }
                .frame(height: 200)
                
                HStack{
                    Text(catBreed.origin)
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                    
                    Text("Inteligence: \(String(catBreed.intelligence))")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                    
                    
                }
                .padding()
            } else {
                Image(systemName: "photo")
                    .resizable()
                    .cornerRadius(10)
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                    
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.gray.opacity(0.3), radius: 4, x: 0, y: 2)
        .navigationBarTitle(catBreed.name, displayMode: .inline)
    }
}

//struct CatDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        CatDetailView(catBreed: CatBreed.defaultCatBreed)
//    }
//}
