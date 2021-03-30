//
//  Interests.swift
//  PixelShow
//
//  Created by Marina De Pazzi on 30/03/21.
//

import SwiftUI

struct InterestMatrix: View {
    @State var didTap: Bool = false    
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Interests")
                .fontWeight(.bold)
                .padding(EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 0))
            
            ForEach(0..<4) { _ in
                HStack {
                    ForEach(0..<2) { _ in
                        SingleInterest(interest: Interest.arquitetura)
                    }
                }
            }
        }
    }
}

struct InterestMatrix_Previews: PreviewProvider {
    static var previews: some View {
        InterestMatrix()
    }
}
