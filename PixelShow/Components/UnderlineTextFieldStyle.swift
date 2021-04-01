//
//  UnderlineTextFieldStyle.swift
//  PixelShow
//
//  Created by Marina De Pazzi on 30/03/21.
//

import SwiftUI

extension View {
    func underlineTextFieldStyle() -> some View{
        self
            .padding(.top, -5)
            .overlay(Rectangle().frame(height: 1).padding(.top, 35))
            .foregroundColor(.black)
            .padding(.bottom, 20)
    }
}
