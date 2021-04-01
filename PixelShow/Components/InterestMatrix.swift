//
//  Interests.swift
//  PixelShow
//
//  Created by Marina De Pazzi on 30/03/21.
//

import SwiftUI

struct InterestMatrix: View {
    @State var didTap: Bool = false
    var interests: [String] = ["Ilustração"
                               ,"Motion"
                               ,"Graphics"
                               ,"Quadrinhos"
                               ,"Graffiti"
                               ,"Games"
                               ,"Publicidade"
                               ,"Cinema"
                               ,"Tecnologia"
                               ,"Design Gráfico"
                               ,"Artes Visuais"
                               ,"Make-Up"
                               ,"3D"
                               ,"Arquitetura"
                               ,"Moda"]
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Interests")
                .fontWeight(.bold)
            
            SingleInterest(interest: "")
        }.padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 0))
    }
}

struct InterestMatrix_Previews: PreviewProvider {
    static var previews: some View {
        InterestMatrix()
    }
}


//    ScrollView(.horizontal) {
//        ForEach(0..<2) { _ in
//            HStack {
//                ForEach(interests, id:\.self) { aux in
//                    SingleInterest(interest: aux)
//                }
//            }
//        }
//    }
//}.padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 0))
