//
//  OnboardingAView.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 01/04/21.
//

import SwiftUI

struct OnboardingScreenView: View {
    let image: Image
    let color: Color
    let text: String
    
    var body: some View {
        VStack(alignment: .center) {
            image.resizable().scaledToFit()
            Text(text).multilineTextAlignment(.center).padding(.top, 50).padding(.horizontal)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(color)
        .foregroundColor(.white)
        .ignoresSafeArea(.all)
        
    }
}

struct OnboardingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreenView(image: Image("OnboardingA"), color: Color("Secondary3"), text: "O Maior Festival de Criatividade\nda América Latina!")
    }
}
