//
//  OnboardingView.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 05/04/21.
//

import SwiftUI

struct OnboardingView: View {
    var action: (() -> Void)?
    @Environment(\.colorScheme) var colorScheme
    @State private var selected = 0
    @State private var backgroundColor = Color("Secondary3")
    
    var body: some View {
        NavigationView {
            VStack {
                TabView(selection: $selected) {
                    
                    ForEach(onboardingPages.indices, id: \.self) { index in
                        OnboardingTab(page: onboardingPages[index])
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .onChange(of: selected, perform: { value in
                    withAnimation {
                        backgroundColor = getColor(selected: selected)
                    }
                })
                
                LoginButtons(selected: selected, action: action)
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(backgroundColor)
            .navigationBarHidden(true)
            .ignoresSafeArea()
            
        }
        .accentColor(colorScheme == .dark ? .white : .black)
        .transition(.move(edge: .top))
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
