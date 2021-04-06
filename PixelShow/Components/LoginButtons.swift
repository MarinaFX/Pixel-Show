//
//  LoginButtons.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 06/04/21.
//

import SwiftUI

struct LoginButtons: View {
    var selected = 0
    
    var body: some View {
        VStack {
            if selected == 2 {
                CustomButton(label: "Entrar", outline: true)
                CustomButton(label: "Quero me cadastrar")
                CustomButton(label: "Entrar com Apple ID", color: Color.black, icon: Image(systemName: "applelogo"))
            }
        }
        .frame(height: 130)
        .padding()
    }
}

struct LoginButtons_Previews: PreviewProvider {
    static var previews: some View {
        LoginButtons()
    }
}
