//
//  RegistrationView.swift
//  PixelShow
//
//  Created by Marina De Pazzi on 30/03/21.
//

import SwiftUI

struct RegistrationView: View {
    var body: some View {
        VStack {
            UserPicture()
            
            TextFields()
            
            InterestMatrix()
            
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
