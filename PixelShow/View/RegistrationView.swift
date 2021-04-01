//
//  RegistrationView.swift
//  PixelShow
//
//  Created by Marina De Pazzi on 30/03/21.
//

import SwiftUI

struct RegistrationView: View {
    var body: some View {
        ScrollView {
            UserPicture()
            
            TextFields()
            
            InterestMatrix()
            
            Spacer()
            
            Text("Ao clicar em ").font(.system(size: 12)) +
            Text("Cadastrar ").bold().font(.system(size: 12)) +
            Text("você concorda com os Termos e condições de uso.").font(.system(size: 12))
            
            CustomButton(label: "Cadastrar").padding()
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
