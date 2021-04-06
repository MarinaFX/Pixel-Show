//
//  Event.swift
//  PixelShow
//
//  Created by Julia Silveira de Souza on 29/03/21.
//

import SwiftUI

struct EventView: View {
    @State var searchText: String
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                SearchBar(text: $searchText)
                    .padding(.vertical, 5)
                    
                Image("Banner").resizable().scaledToFit()
                ExploreCategories()
                EventNews()
            }
            .navigationTitle("Pixel Show")
        }
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(searchText: "")
    }
}
