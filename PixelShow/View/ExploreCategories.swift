//
//  categories.swift
//  PixelShow
//
//  Created by Julia Silveira de Souza on 29/03/21.
//

import SwiftUI

struct ExploreCategories: View {
    var body: some View {
        
        Text("Explore esse universo")
            .bold()
            .frame(width: 370, height: 12, alignment: .leading)

        ScrollView(.horizontal) {
            HStack {
                VStack {
                    Image("Ilustracao")
                    Text("Ilustração")
                }
                VStack {
                    Image("Arquitetura")
                    Text("Arquitetura")
                }
                VStack {
                    Image("Publicidade")
                    Text("Publicidade")
                }
                VStack {
                    Image("Cinema")
                    Text("Cinema")
                }
                VStack {
                    Image("Games")
                    Text("Games")
                }
            }
            .padding()
        }
    }
}
