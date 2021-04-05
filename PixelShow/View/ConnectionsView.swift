//
//  Connections.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 29/03/21.
//

import SwiftUI

struct ConnectionsView: View {
    var body: some View {
        NavigationView {
            ScrollView (showsIndicators: false){
                VStack (alignment: .leading) {
                    Text("Encontre um grupo para se conectar")
                        .fontWeight(.bold)
                        .padding(.horizontal, 10)
                        .padding(.top)
                        .foregroundColor(Color("Secondary1"))
                    
                    HStack {
                        CustomSquaredImage(image: "pesquisasDesign", text: "Grupos de pesquisa em Design")
                        
                        
                        CustomSquaredImage(image: "ideiasCinema", text: "Trocando ideias sobre cinema")
                    }
                    
                    HStack {
                        CustomSquaredImage(image: "tecnicasIlustracao", text: "Entendendo técnias de ilustração")
                        
                        
                        CustomSquaredImage(image: "referenciasFoto", text: "Referências sobre fotografia digital")
                    }
                    
                    HStack {
                        CustomSquaredImage(image: "ideiasPersonagens", text: "Troca de ideias sobre personagens")
                        
                        
                        CustomSquaredImage(image: "dicas3D", text: "Dicas sobre modelação em 3D")
                    }
                    
                    HStack {
                        CustomSquaredImage(image: "devMandalas", text: "Desenvolvimento de mandalas")
                        
                        
                        CustomSquaredImage(image: "pinturaInciantes", text: "Pintura a óleo para iniciantes")
                    }
                    
                    HStack {
                        CustomSquaredImage(image: "pesquisasDesign", text: "Grupos de pesquisa em Design")
                        
                        
                        CustomSquaredImage(image: "ideiasCinema", text: "Trocando ideias sobre cinema")
                    }
                    
                    Spacer()
                    
                }
            }
            .navigationBarItems(trailing: Image(systemName: "magnifyingglass"))
            .navigationBarTitle("Conexões", displayMode: .inline)
        }
        .accentColor(.black)

    }
}

struct Connections_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionsView()
    }
}
