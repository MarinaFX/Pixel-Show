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
            VStack{
                ScrollView(showsIndicators: false) {
                    EventToolbar()
                    ExploreCategories()
                    EventNews()
                }
            }
        }
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView()
    }
}

