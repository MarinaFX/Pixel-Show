//
//  OnboardingView.swift
//  PixelShow
//
//  Created by Julia Silveira de Souza on 31/03/21.
//

import SwiftUI

struct SplashView: View {
    @State var isActive: Bool = false
    
    var body: some View {
        VStack {
            if self.isActive {
                OnboardingView()
            } else {
                ZStack {
                    Image("fundo1")
                        .resizable()
                        .ignoresSafeArea()
                            
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 179)
                        .padding(.horizontal)
                }
                .ignoresSafeArea()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
