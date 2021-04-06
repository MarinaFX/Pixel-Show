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
        .background(backgroundColor)
        .cornerRadius(5.0)
        .overlay(
            RoundedRectangle(cornerRadius: 5, style: .continuous).stroke(borderColor, lineWidth: 1)
        )
        
    }
}


struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(label: "Entrar", outline: true).padding()
    }
}
