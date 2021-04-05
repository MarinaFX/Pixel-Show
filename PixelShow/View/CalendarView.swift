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
    
    @State var tab: Tab = .dia1
    
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .center) {
                    
                    Button(action: {
                        tab = .geral
                    }, label: {
                        VStack {
                            if tab == .geral {
                                Text("Geral")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("BlackWhiteDark"))
                                
                                Rectangle().fill(Color("Secondary1"))
                                    .frame(width: 43, height: 4, alignment: .center)
                                    .offset(y:-8)
                                
                            } else {
                                Text("Geral")
                                    .foregroundColor(Color("BlackWhiteDark"))
                                    .offset(y:-8)
                            }
                        }
                    })
                    .padding(.trailing, 26)
                    
                    Button(action: {
                        tab = .dia1
                    }, label: {
                        VStack {
                            if tab == .dia1 {
                                Text("Dia 1")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("BlackWhiteDark"))
                                
                                Rectangle().fill(Color("Secondary1"))
                                    .frame(width: 43, height: 4, alignment: .center)
                                    .offset(y:-8)
                                
                            } else {
                                Text("Dia 1")
                                    .foregroundColor(Color("BlackWhiteDark"))
                                    .offset(y:-8)
                            }
                        }
                    })
                    .padding(.trailing, 26)

                    Button(action: {
                        tab = .dia2
                    }, label: {
                        VStack {
                            if tab == .dia2 {
                                Text("Dia 2")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("BlackWhiteDark"))
                                    .multilineTextAlignment(.center)
                                
                                Rectangle().fill(Color("Secondary1"))
                                    .frame(width: 43, height: 4, alignment: .center)
                                    .offset(y:-8)
                                
                            } else {
                                Text("Dia 2")
                                    .foregroundColor(Color("BlackWhiteDark"))
                                    .offset(y:-8)
                            }
                        }
                    })
                    
                    Spacer()
                    
                    Image(systemName: "slider.horizontal.3")
                }
                .padding()
                
                switch tab {
                case .geral:
                    Events(events: listEvents())
                case .dia1:
                    Events(events: listEventsDay1())
                case .dia2:
                    Events(events: listEventsDay2())
                }
                
                Spacer()
                
            }
            .navigationBarItems(trailing: Image(systemName: "magnifyingglass"))
            .navigationBarTitle("Agenda", displayMode: .inline)
        }
    }
}

struct Calendar_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
            .preferredColorScheme(.light)
    }
}
