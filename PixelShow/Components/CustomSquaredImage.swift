//
//  CustomSquaredImage.swift
//  PixelShow
//
//  Created by Marina De Pazzi on 02/04/21.
//

import SwiftUI

struct CustomSquaredImage: View {
    var image: String = ""
    var text: String = ""
    
    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .frame(width: 155, height: 115)
            
            Image(systemName: "squareshape.fill")
                .resizable()
                .frame(width: 155, height: 115)
                .opacity(0.5)
            
            VStack{
                Image(systemName: "person.3.fill")
                    .resizable()
                    .frame(width: 30, height: 15)
                    .foregroundColor(.white)
                
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 12))
                    .frame(width: 115, height: 30)
                    .multilineTextAlignment(.center)
                
            }
        }.padding(EdgeInsets(top: 8, leading: 10, bottom: 8, trailing: 10))
    }
}

struct CustomSquaredImage_Previews: PreviewProvider {
    static var previews: some View {
        CustomSquaredImage(image: "pesquisasDesign", text: "Grupos de pesquisa em Design")
    }
}
