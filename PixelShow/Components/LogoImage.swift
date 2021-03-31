//
//  LogoImage.swift
//  PixelShow
//
//  Created by Julia Silveira de Souza on 31/03/21.
//

import SwiftUI

struct LogoImage: View {
    var body: some View {
        Image("logo1")
            .clipShape(Rectangle())
            .overlay(Rectangle().stroke(lineWidth: 0))
    }
}

struct LogoImage_Previews: PreviewProvider {
    static var previews: some View {
        LogoImage()
    }
}
