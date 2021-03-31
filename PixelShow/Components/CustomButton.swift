//
//  CustomButton.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 31/03/21.
//

import SwiftUI

struct CustomButton: View {
    let label: String
    
    var body: some View {
        VStack {
            Text(label)
        }
        .padding(.vertical, 9)
        .foregroundColor(.white)
        .frame(maxWidth: .infinity)
        .background(Color("Secondary3"))
        .cornerRadius(5.0)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(label: "Cadastrar").padding()
    }
}
