//
//  OnboardingTab.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 05/04/21.
//

import SwiftUI

struct OnboardingTab: View {
    let page: Page
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(page.image).resizable().scaledToFit().padding(.bottom)
            
            Spacer()

            Text(page.text)
                .fontWeight(.medium)
                .font(.system(size: 18))
                .multilineTextAlignment(.center)
                .padding(.bottom, 110)
                .padding(.horizontal)
                        
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .foregroundColor(.white)
        
    }
}

struct OnboardingTab_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            
            OnboardingTab(page: onboardingPages[0])
            
        }
    }
}
