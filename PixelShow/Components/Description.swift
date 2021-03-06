//
//  Description.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 30/03/21.
//

import SwiftUI

struct Description: View {
    var event: Event
    
    var body: some View {
        HStack {
            event.speakerPhoto.resizable().frame(width: 48, height: 48).padding(.trailing, 6)
                        
            VStack(alignment: .leading) {
                Text(event.speakerName)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("Dia \(event.date) - \(event.hour)")
                    .font(.subheadline)
                    .foregroundColor(Color("GrayWhiteDark"))
            }
            
            Spacer()
        }
    }
}

struct Description_Previews: PreviewProvider {
    static var previews: some View {
        let events = listEvents()
        Description(event: events[2])
    }
}
