//
//  OnboardingLoginScreen.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 01/04/21.
//

import SwiftUI

struct OnboardingLoginScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("OnboardingC").resizable().scaledToFit()
                
                VStack {
                    Text("Uma busca pelo ócio e da\ncriatividade perdida!").multilineTextAlignment(.center).padding(.top, 10).padding(.bottom, 40)
                    
                    
                    NavigationLink(destination: LoginView()) {
                        CustomButton(label: "Entrar", outline: true)
                    }
                    
                    NavigationLink(destination: RegistrationView()) {
                        CustomButton(label: "Quero me cadastrar")
                    }
                    
                    CustomButton(label: "Entrar com Apple Id", color: Color.black, icon: Image(systemName: "applelogo"))
                    
                }.padding(.horizontal)
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Secondary5"))
            .foregroundColor(.white)
            .ignoresSafeArea(.all)
        }
    }
}

struct OnboardingLoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingLoginScreen()
    }
}
