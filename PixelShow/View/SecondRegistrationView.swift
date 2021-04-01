//
//  SecondRegistrationView.swift
//  PixelShow
//
//  Created by Marina De Pazzi on 01/04/21.
//

import SwiftUI

struct SecondRegistrationView: View {
    @State var email: String
    @State var senha: String
    @State var confirmarSenha: String
    
    var body: some View {
        VStack (alignment: .leading){
            
            VStack {
                CustomTextField(text: "E-mail", placeholder: "exemplo123@email.com", input: email)
                CustomTextField(text: "Senha", placeholder: "********", input: senha)
                CustomTextField(text: "Confirmar Senha", placeholder: "********", input: confirmarSenha)
            }
            
            
            Spacer()
            
            VStack {
                Text("Ao clicar em ").font(.system(size: 12)) +
                    Text("Cadastrar ").bold().font(.system(size: 12)) +
                    Text("você concorda com os Termos e condições de uso.").font(.system(size: 12))
            }.frame(width: 350, height: nil, alignment: .leading).padding(.bottom, 20)
            
            CustomButton(label: "Cadastrar")
            
        }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}

struct SecondRegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        SecondRegistrationView(email: "", senha: "", confirmarSenha: "")
    }
}
