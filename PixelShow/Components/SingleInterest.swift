//
//  Interest.swift
//  PixelShow
//
//  Created by Marina De Pazzi on 30/03/21.
//

import SwiftUI

struct SingleInterest: View {
    @State var tappedItems: Set<String> = ["ilustração", "artes visuais"]
    @State var interest: String
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        FlowLayout(mode: .scrollable,
                       items: ["ilustração"
                               ,"motion"
                               ,"graphics"
                               ,"design gráfico"
                               ,"quadrinhos"
                               ,"3D"
                               ,"artes visuais"
                               ,"graffiti"
                               ,"games"
                               ,"publicidade"
                               ,"make-Up"
                               ,"cinema"
                               ,"tecnologia"
                               ,"arquitetura"
                               ,"moda"]) { category in
            Text(category)
                .font(.system(size: 12))
                .onTapGesture (count: 1, perform: {
                    if tappedItems.contains(category) {
                        tappedItems.remove(category)
                    }
                    else {
                        tappedItems.insert(category)
                    }
                })
                .padding(.all, 6)
                .foregroundColor(tappedItems.contains(category) ? Color.white : (colorScheme == .dark ? Color.white : Color.black))
                .background(ZStack{
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .foregroundColor(tappedItems.contains(category) ? Color("Secondary5") : Color.clear)
                    
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .stroke(tappedItems.contains(category) ? Color.clear : Color.gray, lineWidth: 1)
                })
        }
    }
}

struct SingleInterest_Previews: PreviewProvider {
    static var previews: some View {
        SingleInterest(interest: "Design Gráfico")
    }
}
