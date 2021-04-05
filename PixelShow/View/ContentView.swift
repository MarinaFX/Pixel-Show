//
//  ContentView.swift
//  PixelShow
//
//  Created by Marina De Pazzi on 29/03/21.
//

import SwiftUI

struct ContentView: View {
    @State var isLogged = true
    
    var body: some View {
        if isLogged {
            TabView() {
                EventView(searchText: "")
                    .tabItem {
                        Image(systemName: "puzzlepiece")
                        Text("Evento")
                    }
                
                CalendarView()
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("Agenda")
                    }
            
                ContentListView()
                    .tabItem {
                        Image(systemName: "square.3.stack.3d")
                        Text("Conteúdo")
                    }
            
                ConnectionsView()
                    .tabItem {
                        Image(systemName: "person.2")
                        Text("Conexões")
                    }
                
                FavoritesView()
                    .tabItem {
                        Image(systemName: "heart")
                        Text("Favoritos")
                    }
            }
            .accentColor(Color("Secondary1"))

        } else {
            SplashView(isActive: false) {
                isLogged = true
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
