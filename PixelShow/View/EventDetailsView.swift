//
//  EventDetailsView.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 30/03/21.
//

import SwiftUI

struct EventDetailsView: View {
    @State private var showingSheet = true
    let events = listEvents()
    
    
    var body: some View {
        NavigationView {
            Button("Show Action Sheet") {
                showingSheet = true
            }
            .sheet(isPresented: $showingSheet) {
                NavigationView {
                    VStack {
                        
                        VStack {
                        }
                        .frame(maxWidth: .infinity, minHeight: CGFloat(200))
                        .background(Color.gray)
                        .cornerRadius(5.0)
                        .padding(.top)
                        .padding(.bottom, 30)
                                                
                        Description(event: events[2])
                        
                        Text(events[0].textDescription).padding(.vertical)
                        
                        Spacer()
                    }
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Image(systemName: "chevron.backward")
                        }
                        
                        ToolbarItem(placement: .principal) {
                            Text("Desenho de Imprensa")
                        }
                    }.padding(.horizontal, 22)
                }

            }
        }
    }
}

struct EventDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailsView()
    }
}

extension UINavigationController {
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        let standard = UINavigationBarAppearance()
        standard.backgroundColor = .white
        
        navigationBar.standardAppearance = standard
    }
}
