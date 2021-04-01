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
                EventView()
            } else {
                VStack {
                    Image("fundo1")
                        .resizable()
                        .ignoresSafeArea()
                            
                    Image("logo1")
                        .position(x: 200, y: -200)
                        .frame(height: UIScreen.main.bounds.height / 2)
                        .padding(.vertical, -200)
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
