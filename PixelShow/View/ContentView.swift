//
//  ContentView.swift
//  PixelShow
//
//  Created by Marina De Pazzi on 29/03/21.
//

import SwiftUI

struct ContentView: View {
    enum Tabs {
        case feed
        case search
        case profile
    }
    
    @State var selectedTab: Tabs = .profile
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Event()
                .tabItem {
                    Image(systemName: "puzzlepiece")
                    Text("Evento")
                }
            
            Calendar()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Agenda")
                }
            
            Content()
                .tabItem {
                    Image(systemName: "square.3.stack.3d")
                    Text("Conteúdo")
                }
            
            Connections()
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Conexões")
                }
            
            Favorites()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favoritos")
                }
        }.accentColor(Color("Secondary1"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
