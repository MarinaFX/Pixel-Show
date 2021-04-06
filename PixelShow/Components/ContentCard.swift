//
//  ContentCard.swift
//  PixelShow
//
//  Created by Carolina Nobre on 05/04/21.
//
import SwiftUI

struct ContentCard: View {
    var content: Content
    var body: some View {
        ZStack(alignment:.leading) {
           content.image
                .resizable()
                .frame(width: .infinity, height: 143, alignment: .center)
                .cornerRadius(4)
            VStack {
                Text(content.content.rawValue)
                    .fontWeight(.medium)
                    .font(.system(size: 18))
                    .padding()
                    .foregroundColor(.black)

            }
            .frame(width: 134, height: 38)
            .background(Color.white)


        }.padding(EdgeInsets(top: 0, leading: 20, bottom: 16, trailing: 20))
    }
}

struct ContentCard_Previews: PreviewProvider {
    static var previews: some View {
        ContentCard(content: Content(content: .ilustração, image: Image("Contents/Ilustracao")))
    }
}
