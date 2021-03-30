//
//  Event.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 29/03/21.
//

import SwiftUI

struct Event: View {
    var body: some View {
        NavigationView {
            VStack{
                ScrollView{
                    Image("Banner")
                        .padding()
                    
                    ExploreCategories()
                    EventNews()
                }
            }
            .navigationTitle("Pixel Show")
        }
    }
}

struct Event_Previews: PreviewProvider {
    static var previews: some View {
        Event()
    }
}

//ÍconeLupa = "magnifyingglass"
