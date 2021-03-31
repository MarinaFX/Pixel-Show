//
//  EventDetailsView.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 30/03/21.
//

import SwiftUI
import AVKit

struct EventDetailsView: View {
    let event: Event
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading) {
                        
                        Video()
                        
                        Description(event: event)
                        
                        Text(event.textDescription)
                            .lineSpacing(1.3)
                            .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            .padding(.vertical)

                        Text("Palestrante nas redes")
                            .font(.title3)
                            .fontWeight(.bold)
                        
                        HStack {
                            Image("behance")
                            Image("linkedin")
                            Image("twitter")
                            Image("facebook")
                        }.padding(.bottom, 80)
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image(systemName: "chevron.backward")
                    }
                    
                    ToolbarItem(placement: .principal) {
                        Text("Desenho de Imprensa")
                    }
                }
                
                VStack {
                    Spacer()
                    CustomButton(label: "Inscrever-se")
                }
            }.padding(.horizontal, 22)
        }
    }
}

struct EventDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailsView(event: listEvents()[0])
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
