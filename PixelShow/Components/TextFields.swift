//
//  TextFields.swift
//  PixelShow
//
//  Created by Marina De Pazzi on 30/03/21.
//

import SwiftUI

struct TextFields: View {
    @State var userName: String = ""
    var body: some View {
        VStack{
            TextField("First name", text: $userName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Last name", text: $userName)

            TextField("Company", text: $userName)

            TextField("Postion", text: $userName)

        }.padding()
    }
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields()
    }
}
