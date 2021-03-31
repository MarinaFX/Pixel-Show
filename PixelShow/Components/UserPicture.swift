//
//  UserPicture.swift
//  PixelShow
//
//  Created by Marina De Pazzi on 30/03/21.
//

import SwiftUI

struct UserPicture: View {
    
    @State private var isShowPhotoLibrary = false
    @State private var image = UIImage()
    
    var body: some View {
        VStack {
            Image(uiImage: self.image)
                .clipShape(Circle())
                .overlay(
                    Circle().border(Color.black, width: 2)
                )
            
            Button(action: {
                self.isShowPhotoLibrary = true
            }, label: {
                Circle()
                    .stroke(lineWidth: 2)
                    .frame(width: 40, height: 40)
                    .overlay(
                        ZStack{
                            Circle()
                                .foregroundColor(Color.white)
                            Image(systemName: "camera.fill")
                        }
                    )
                    .offset(x: 33, y: -35)
                .accentColor(.black)
            })
        }
    }
}

struct UserPicture_Previews: PreviewProvider {
    static var previews: some View {
        UserPicture()
    }
}
