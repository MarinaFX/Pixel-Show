//
//  Favorites.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 29/03/21.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            VStack {
                Events(events: listEvents())
                Spacer()
            }
            .navigationBarItems(trailing: Image(systemName: "magnifyingglass"))
            .navigationBarTitle("Favorites", displayMode: .inline)
        }
    }
}

struct Favorites_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
