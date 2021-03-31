//
//  Event.swift
//  PixelShow
//
//  Created by Julia Silveira de Souza on 29/03/21.
//

import SwiftUI

struct EventView: View {
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                Image("Banner")
                ExploreCategories()
                EventNews()
            }
            
            .navigationTitle("Pixel Show")
            .toolbar {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "magnifyingglass")
                })
            }
        }
        .accentColor(.black)
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView()
    }
}
