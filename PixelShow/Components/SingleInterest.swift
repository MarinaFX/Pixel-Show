//
//  Interest.swift
//  PixelShow
//
//  Created by Marina De Pazzi on 30/03/21.
//

import SwiftUI

struct SingleInterest: View {
    @State var didTap: Bool = false
    @State var interest: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .foregroundColor(didTap ? Color.green : Color.clear)
            
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .stroke(Color.black, lineWidth: 1)
                
            Text(interest)
                .padding(.all, 6)
                .font(.system(size: 12))
                .onTapGesture (count: 1, perform: { didTap.toggle() })
        }.fixedSize().padding(.horizontal, 2)
    }
}

struct SingleInterest_Previews: PreviewProvider {
    static var previews: some View {
        SingleInterest(interest: "Design Gráfico")
    }
}