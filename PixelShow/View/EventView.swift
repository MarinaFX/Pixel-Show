//
//  Event.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 29/03/21.
//

import SwiftUI

struct EventView: View {
    var body: some View {
        NavigationView {
            VStack{
                ScrollView{
                    Image("Banner")
                        .padding()
                    
                    Image(systemName: "magnifyingglass")

                    ExploreCategories()
                    EventNews()
                }
            }
            .navigationTitle("Pixel Show")
        }
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView()
    }
}

