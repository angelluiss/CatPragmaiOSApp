//
//  SelectPageView.swift
//  CatApp
//
//  Created by Angel  Rangel  on 24/05/2023.
//

import SwiftUI

struct SelectPageView: View {
    @EnvironmentObject private var viewModelNavigation: NavigationViewModel
    
    var body: some View {
        NavigationView {
            VStack{

                Button{
                   
                    withAnimation {
                        viewModelNavigation.navigateToDefault()
                    }
                    
                    
                } label: {
                    Text("Default View")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame( maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
                Button{
                    
                    
                    withAnimation {
                        viewModelNavigation.navigateToCustom()
                    }
                            

                    
                } label: {
                    Text("Custom View")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame( maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                

            }
        }
    }
}

struct SelectPageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectPageView()
    }
}
