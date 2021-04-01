//
//  TextFields.swift
//  PixelShow
//
//  Created by Marina De Pazzi on 30/03/21.
//

import SwiftUI

struct CustomTextField: View {
    var text: String
    var placeholder: String
    @State var input: String = ""


    var body: some View {
        VStack (alignment: .leading){
            Text(text)
            
            TextField(placeholder, text: $input)
                .underlineTextFieldStyle()
            
        }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(text: "teste", placeholder: "testando")
    }
}
