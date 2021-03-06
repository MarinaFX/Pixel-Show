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
    
    var action: (() -> Void)?
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            UserPicture()
                .padding(.top, 10)
            
            VStack {
                CustomTextField(text: "Primeiro Nome", placeholder: "John", input: name)
                CustomTextField(text: "Último Nome", placeholder: "Appleseed", input: lastName)
                CustomTextField(text: "Empresa", placeholder: "Apple", input: company)
                CustomTextField(text: "Cargo", placeholder: "UX Designer", input: position)
            }
            
            InterestMatrix()
            
            Spacer()
            
            VStack {
                Text("Ao clicar em ").font(.system(size: 12)) +
                    Text("Cadastrar ").bold().font(.system(size: 12)) +
                    Text("você concorda com os Termos e condições de uso.").font(.system(size: 12))
            }.frame(width: 350, height: nil, alignment: .leading).padding(.bottom, 20)
            
            NavigationLink(
                destination: SecondRegistrationView(email: "", senha: "", confirmarSenha: "", action: action),
                label: {
                    CustomButton(label: "Continuar").padding(.horizontal, 20)
                })
            
            Spacer()
        }
        .navigationBarTitle("Cadastro", displayMode: .inline)        
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
            .preferredColorScheme(.dark)
    }
}
