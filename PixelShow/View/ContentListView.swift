//
//  Content.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 29/03/21.
//

import SwiftUI

struct ContentListView: View {
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                ContentCard(content: Content(content: .ilustração, image: Image("Contents/Ilustracao")))
                ContentCard(content: Content(content: .arquitetura, image: Image("Contents/Arquitetura")))
                ContentCard(content: Content(content: .games, image: Image("Contents/Games")))
                ContentCard(content: Content(content: .cinema, image: Image("Contents/Cinema")))
                ContentCard(content: Content(content: .moda, image: Image("Contents/Moda")))
                
            }
            .padding(.top)
            .navigationBarItems(trailing: Image(systemName: "magnifyingglass"))
            .navigationBarTitle("Conteúdo", displayMode: .inline)
        }
    }
}

struct ContentListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentListView()
    }
}
