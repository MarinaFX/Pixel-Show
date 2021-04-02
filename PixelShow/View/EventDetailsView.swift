//
//  EventDetailsView.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 30/03/21.
//

import SwiftUI
import AVKit

struct EventDetailsView: View {
    
    @Environment(\.presentationMode) var presentation
    
    let event: Event
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading) {
                        
                        Video()
                        
                        Description(event: event)
                        
                        Text(event.textDescription)
                            .foregroundColor(Color("BlackWhiteDark"))
                            .lineSpacing(1.3)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.vertical)
                        
                        Text("Palestrante nas redes")
                            .font(.title3)
                            .fontWeight(.bold)
                        
                        HStack {
                            Image("behance").resizable().frame(width: 45, height: 45).padding(.trailing, 3)
                            Image("linkedin").resizable().frame(width: 45, height: 45).padding(.trailing, 3)
                            Image("twitter").resizable().frame(width: 45, height: 45).padding(.trailing, 3)
                            Image("facebook").resizable().frame(width: 45, height: 45).padding(.trailing, 3)
                        }
                        .padding(.bottom, 80)
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            presentation.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "chevron.backward")
                        })
                        
                    }
                    
                    ToolbarItem(placement: .principal) {
                        Text(event.title)
                            .lineLimit(1)
                            .frame(width: 250, alignment: .center)
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

//extension UINavigationController {
//    override open func viewDidLoad() {
//        super.viewDidLoad()
//        
//        let standard = UINavigationBarAppearance()
//        standard.backgroundColor = .white
//        
//        //navigationBar.standardAppearance = standard
//        
//    }
//}
