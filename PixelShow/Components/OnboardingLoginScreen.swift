//
//  OnboardingLoginScreen.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 01/04/21.
//

import SwiftUI

struct OnboardingLoginScreen: View {
    var body: some View {
        VStack {
            Image("OnboardingC").resizable().scaledToFit()
            Text("Uma busca pelo ócio e da\ncriatividade perdida!").multilineTextAlignment(.center).padding(.top, 10).padding(.horizontal).padding(.bottom, 40)
            

            CustomButton(label: "Login").padding(.horizontal)
            CustomButton(label: "Quero me cadastrar", outline: true).padding(.horizontal)
            

        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Secondary5"))
        .foregroundColor(.white)
        .ignoresSafeArea(.all)
    }
}

struct OnboardingLoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingLoginScreen()
    }
}
