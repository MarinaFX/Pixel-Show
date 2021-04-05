//
//  OnboardingView.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 01/04/21.
//

import SwiftUI

struct OnboardingView: View {
    
    var action: (() -> Void)?
    
    var body: some View {
        NavigationView {
            ScrollView {
                TabView {
                    OnboardingScreen(image: Image("OnboardingA"), color: Color("Secondary3"), text: "O Maior Festival de Criatividade\nda América Latina!")
                    
                    OnboardingScreen(image: Image("OnboardingB"), color: Color("Secondary4"), text: "Prepare-se para um momento único de exploração criativa!")
                    
                    OnboardingLoginScreen(action: action)
                    
                }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .tabViewStyle(PageTabViewStyle())
            }.ignoresSafeArea(.all)
        }
        .accentColor(.black)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
