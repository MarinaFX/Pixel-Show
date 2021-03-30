//
//  Calendar.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 29/03/21.
//

import SwiftUI

enum Tab {
    case geral, dia1, dia2
}

struct CalendarView: View {
    
    @State var tab: Tab = .geral
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    tab = .geral
                }, label: {
                    Text("Geral")
                        .foregroundColor(Color.black)
                })
                
                Button(action: {
                    tab = .dia1
                }, label: {
                    Text("Dia 1")
                        .foregroundColor(Color.black)
                })
                
                Button(action: {
                    tab = .dia2
                }, label: {
                    Text("Dia 2")
                        .foregroundColor(Color.black)
                })
                
                Spacer()
                
                Image(systemName: "slider.horizontal.3")
            }
            .padding()
            
            switch tab {
            case .geral:
                Events(events: listEvents())
            case .dia1:
                Events(events: listEvents())
            case .dia2:
                Events(events: listEvents())
            }
        }
    }
}

struct Calendar_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
