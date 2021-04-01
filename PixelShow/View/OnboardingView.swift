//
//  OnboardingView.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 01/04/21.
//

import SwiftUI

struct OnboardingView: View {
    
    
    var body: some View {
        
        ScrollView {
            TabView {
                
                OnboardingScreenView(image: Image("OnboardingA"), color: Color("Secondary3"), text: "O Maior Festival de Criatividade\nda América Latina!")
                
                OnboardingScreenView(image: Image("OnboardingB"), color: Color("Secondary4"), text: "Prepare-se para um momento único de exploração criativa!")
                
                VStack {
                    
                    Image("OnboardingC").resizable().scaledToFit()
                    Text("Uma busca pelo ócio e da\ncriatividade perdida!").multilineTextAlignment(.center).padding(.top, 10).padding(.horizontal).padding(.bottom, 40)
                    

                    CustomButton(label: "Já tenho uma conta").padding(.horizontal)
                    CustomButton(label: "Quero me cadastrar", outline: true).padding(.horizontal)

                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color("Secondary5"))
                .foregroundColor(.white)
                .ignoresSafeArea(.all)
                
                
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .tabViewStyle(PageTabViewStyle())
        }.ignoresSafeArea(.all)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
