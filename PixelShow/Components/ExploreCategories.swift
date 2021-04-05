//
//  ExploreCategories.swift
//  PixelShow
//
//  Created by Julia Silveira de Souza on 29/03/21.
//

import SwiftUI

struct ExploreCategories: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Explore esse universo")
                .bold()
                .font(.system(size: 19))
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    VStack {
                        Image("Ilustracao").resizable().frame(width: 66, height: 66)
                        Text("Ilustração")
                    }
                    .frame(width: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    VStack {
                        Image("Arquitetura").resizable().frame(width: 66, height: 66)
                        Text("Arquitetura")
                    }
                    .frame(width: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    VStack {
                        Image("Games").resizable().frame(width: 66, height: 66)
                        Text("Games")
                    }
                    .frame(width: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    VStack {
                        Image("Cinema").resizable().frame(width: 66, height: 66)
                        Text("Cinema")
                    }
                    .frame(width: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    VStack {
                        Image("Publicidade").resizable().frame(width: 66, height: 66)
                        Text("Publicidade")
                    }
                    .frame(width: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                }
            }
        }
    }
}
