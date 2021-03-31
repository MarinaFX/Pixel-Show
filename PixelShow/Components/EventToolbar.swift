//
//  EventToolbar.swift
//  PixelShow
//
//  Created by Julia Silveira de Souza on 30/03/21.
//

import SwiftUI

struct EventToolbar: View {
    var body: some View {
        Text("")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Text("Pixel Show")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 40))
                    }
                }
                
                ToolbarItem {
                    Image(systemName: "magnifyingglass")
                }
            }
    }
}
