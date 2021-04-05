//
//  OnboardingLoginScreen.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 01/04/21.
//

import SwiftUI

struct OnboardingLoginScreen: View {
    
    var action: (() -> Void)?
    
    var body: some View {
        
        VStack {
            Image("OnboardingC")
                .resizable()
                .scaledToFit()
            
            VStack {
                Text("Uma busca pelo ócio e da\ncriatividade perdida!")
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                NavigationLink(destination: LoginView(action: action)) {
                    CustomButton(label: "Entrar", outline: true)
                }
                
                NavigationLink(destination: RegistrationView(action: action)) {
                    CustomButton(label: "Quero me cadastrar")
                }
                
                CustomButton(label: "Entrar com Apple ID", color: Color.black, icon: Image(systemName: "applelogo"))
                    .padding(.bottom)
                
            }.padding(.horizontal)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Secondary5"))
        .foregroundColor(.white)
        .ignoresSafeArea(.all)
        
    }
}

struct OnboardingLoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingLoginScreen()
            .previewDevice("iPhone 11 Pro Max")
            
    }
}
