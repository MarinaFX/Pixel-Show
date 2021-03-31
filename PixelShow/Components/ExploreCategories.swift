//
//  ExploreCategories.swift
//  PixelShow
//
//  Created by Julia Silveira de Souza on 29/03/21.
//

import SwiftUI

struct ExploreCategories: View {
    var body: some View {
        
        VStack{
            Text("Explore esse universo")
                .bold()
                .font(.system(size: 19))
                .frame(width: 370, height: 30, alignment: .leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    VStack {
                        Image("Ilustracao")
                        Text("Ilustração")
                    }
                    .frame(width: 90, height: nil, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    VStack {
                        Image("Arquitetura")
                        Text("Arquitetura")
                    }
                    .frame(width: 90, height: nil, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    VStack {
                        Image("Games")
                        Text("Games")
                    }
                    .frame(width: 90, height: nil, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    VStack {
                        Image("Cinema")
                        Text("Cinema")
                    }
                    .frame(width: 90, height: nil, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    VStack {
                        Image("Publicidade")
                        Text("Publicidade")
                    }
                    .frame(width: 90, height: nil, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                }
            }
        }
    }
}
