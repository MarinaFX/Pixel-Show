//
//  OnboardingView.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 05/04/21.
//

import SwiftUI

struct OnboardingView: View {
    var action: (() -> Void)?
    @State private var selected = 0
    
    var body: some View {
        VStack {
            TabView(selection: $selected) {
                
                ForEach(onboardingPages.indices, id: \.self) { index in
                    OnboardingTab(page: onboardingPages[index])
                }
            }
            .tabViewStyle(PageTabViewStyle())
            
            LoginButtons(selected: selected)
            
            Spacer()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(getColor(selected: selected))
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

func getColor(selected: Int) -> Color {
    if selected == 0 {
        return Color("Secondary3")
    } else if selected == 1 {
        return Color("Secondary4")
    } else if selected == 2 {
        return Color("Secondary5")
    }
    
    return Color.black
}


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
