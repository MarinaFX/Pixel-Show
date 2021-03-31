//
//  Events.swift
//  PixelShow
//
//  Created by Igor Marques Vicente on 30/03/21.
//

import SwiftUI

struct Events: View {
    var events: [Event]
    
    @State private var showingSheet = false
    
    var body: some View {
        VStack {
            List(events, id: \.title){ event in
                
                Button(action: {
                    showingSheet = true
                }, label: {
                    EventRow(event: event)
                        .padding(.vertical,10)
                })
                .sheet(isPresented: $showingSheet) {
                    EventDetailsView(event: event)
                }
                
            }
            .listStyle(PlainListStyle())
        }
    }
}

struct Events_Previews: PreviewProvider {
    static var previews: some View {
        Events(events: listEvents())
    }
}
