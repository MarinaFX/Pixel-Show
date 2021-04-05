//
//  CustomButton.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 31/03/21.
//

import SwiftUI

struct CustomButton: View {
    let label: String
    
    var outline: Bool = false
    var color: Color = Color("Secondary3")
    var icon: Image?
    var action: (() -> Void)?
    
    //    init(label: String) {
    //        self.label = label
    //        self.outline = false
    //        self.color = Color("Secondary3")
    //    }
    //
    //    init(label: String, outline: Bool) {
    //        self.label = label
    //        self.outline = outline
    //        self.color = Color("Secondary3")
    //    }
    //
    //    init(label: String, color: Color, icon: Image) {
    //        self.label = label
    //        self.outline = false
    //        self.color = color
    //        self.icon = icon
    //    }
    
    let transparent: Color = Color(red: 0, green: 0, blue: 0, opacity: 0.0)
    
    var foregroundColor: Color {
        return outline ? Color("Secondary3") : .white
    }
    
    var borderColor: Color {
        return outline ? Color("Secondary3") : transparent
    }
    
    var backgroundColor: Color {
        return outline ? transparent : color
    }
    
    var body: some View {
        
        Button(action: {
            action?()
        }, label: {
            HStack {
                icon
                Text(label).padding(.top, 1)
            }
        })
        .padding(.vertical, 9)
        .foregroundColor(foregroundColor)
        .frame(maxWidth: .infinity)
        .border(borderColor, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        .background(backgroundColor)
        .cornerRadius(5.0)
        
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(label: "Entrar", outline: true).padding()
    }
}
