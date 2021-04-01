//
//  TextFields.swift
//  PixelShow
//
//  Created by Marina De Pazzi on 30/03/21.
//

import SwiftUI

struct TextFields: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var company: String = ""
    @State var position: String = ""

    var body: some View {
        VStack (alignment: .leading){
            Text("Primeiro Nome")
            
            TextField("John", text: $firstName)
                .underlineTextFieldStyle()
            
            Text("Último Nome")
            
            TextField("Appleseed", text: $lastName)
                .underlineTextFieldStyle()
            
            Text("Empresa")

            TextField("Apple", text: $company)
                .underlineTextFieldStyle()
            
            Text("Cargo")

            TextField("UX Designer", text: $position)
                .underlineTextFieldStyle()
            
        }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields()
    }
}
