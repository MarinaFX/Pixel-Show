//
//  Interest.swift
//  PixelShow
//
//  Created by Marina De Pazzi on 30/03/21.
//

import SwiftUI

struct SingleInterest: View {
    @State var didTap: Bool = false
    @State var interest: Interest

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .foregroundColor(didTap ? Color.green : Color.clear)
            
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .stroke(Color.black, lineWidth: 1)
                
            Text(interest.rawValue)
                .padding(.all, 10)
                .font(.system(size: 10))
                .onTapGesture (count: 1, perform: { didTap.toggle() })
        }.fixedSize()
    }
}

struct SingleInterest_Previews: PreviewProvider {
    static var previews: some View {
        SingleInterest(interest: Interest.arquitetura)
    }
}
