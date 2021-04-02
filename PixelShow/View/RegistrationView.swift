//
//  RegistrationView.swift
//  PixelShow
//
//  Created by Marina De Pazzi on 30/03/21.
//

import SwiftUI

struct RegistrationView: View {
    @State var name: String = ""
    @State var lastName: String = ""
    @State var company: String = ""
    @State var position: String = ""


    var body: some View {
        ScrollView {
            UserPicture()
            
            VStack {
                CustomTextField(text: "Primeiro Nome", placeholder: "John Appleseed", input: name)
                CustomTextField(text: "Último Nome", placeholder: "John Appleseed", input: lastName)
                CustomTextField(text: "Empresa", placeholder: "John Appleseed", input: company)
                CustomTextField(text: "Cargo", placeholder: "John Appleseed", input: position)
            }
            
            InterestMatrix()
            
            Spacer()
                        
            VStack {
                Text("Ao clicar em ").font(.system(size: 12)) +
                    Text("Cadastrar ").bold().font(.system(size: 12)) +
                    Text("você concorda com os Termos e condições de uso.").font(.system(size: 12))
            }.frame(width: 350, height: nil, alignment: .leading).padding(.bottom, 20)
            
            NavigationLink(
                destination: SecondRegistrationView(email: "", senha: "", confirmarSenha: ""),
                label: {
                    CustomButton(label: "Continuar").padding(.horizontal, 20)
                })
            
            Spacer()
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
