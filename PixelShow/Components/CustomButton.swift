//
//  CustomButton.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 31/03/21.
//

import SwiftUI

struct CustomButton: View {
    let label: String
    let outline: Bool
    
    init(label: String) {
        self.label = label
        self.outline = false
    }
    
    init(label: String, outline: Bool) {
        self.label = label
        self.outline = outline
    }
    
    var body: some View {
        
        VStack {
            Text(label)
        }
        .padding(.vertical, 9)
        .foregroundColor(outline ? Color("Secondary3") : .white)
        .frame(maxWidth: .infinity)
        .border(Color("Secondary3"), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        .background(outline ? Color(red: 0, green: 0, blue: 0, opacity: 0.0) : Color("Secondary3"))
        .cornerRadius(5.0)
        
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(label: "Cadastrar").padding()
    }
}
