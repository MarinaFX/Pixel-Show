//
//  RegistrationView.swift
//  PixelShow
//
//  Created by Marina De Pazzi on 30/03/21.
//

import SwiftUI

struct RegistrationView: View {
    var body: some View {
        VStack {
            UserPicture()
            
            TextFields()
            
            InterestMatrix()
            
            Spacer()
                        
            VStack {
                Text("Ao clicar em ").font(.system(size: 12)) +
                    Text("Cadastrar ").bold().font(.system(size: 12)) +
                    Text("você concorda com os Termos e condições de uso.").font(.system(size: 12))
            }.frame(width: 350, height: nil, alignment: .leading).padding(.bottom, 20)
            
            CustomButton(label: "Cadastrar").padding(.horizontal, 20)
            
            Spacer()
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
