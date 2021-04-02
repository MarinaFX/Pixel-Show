//
//  LoginView.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 01/04/21.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            VStack {
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 132)
                
                VStack(alignment: .trailing) {
                    CustomTextField(text: "E-mail", placeholder: "abcd@email.com")
                    CustomTextField(text: "Senha", placeholder: "********")
                    
                    Text("Esqueci a senha").padding(.horizontal)
                }.padding(.top, 80)
                
            }.padding(.top, 120)
            
            Spacer()
            
            NavigationLink(destination: ContentView()) {
                CustomButton(label: "Entrar").padding().padding(.bottom)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Secondary6"))
        .ignoresSafeArea(.all)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
