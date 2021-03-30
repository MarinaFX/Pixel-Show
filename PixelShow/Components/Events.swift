//
//  Events.swift
//  PixelShow
//
//  Created by Igor Marques Vicente on 30/03/21.
//

import SwiftUI

struct Events: View {
    var events: [Event]
    
    var body: some View {
        NavigationView {
            List(events, id: \.title){ event in
                NavigationLink(destination: EventRow(event: event)) {
                    EventRow(event: event)
                }
            }
        }
    }
}

struct Events_Previews: PreviewProvider {
    static var previews: some View {
        Events(events: listEvents())
    }
}
