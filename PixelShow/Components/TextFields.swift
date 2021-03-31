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
            Text("First Name")
            
            TextField("John", text: $firstName)
                .underlineTextFieldStyle()
            
            Text("Last Name")
            
            TextField("Appleseed", text: $lastName)
                .underlineTextFieldStyle()
            
            Text("Company")

            TextField("Apple", text: $company)
                .underlineTextFieldStyle()
            
            Text("Position")

            TextField("UX Designer", text: $position)
                .underlineTextFieldStyle()

        }.padding()
    }
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields()
    }
}
