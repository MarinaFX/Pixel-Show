//
//  UserPicture.swift
//  PixelShow
//
//  Created by Marina De Pazzi on 30/03/21.
//

import SwiftUI

struct UserPicture: View {
    
    @State private var isShowPhotoLibrary = false
    @State private var image:UIImage = UIImage(named: "Cadastro") ?? UIImage()
    
    var body: some View {
        VStack {
            Image(uiImage: self.image)
                .resizable()
                .frame(width: 92, height: 94)
                .clipShape(Circle())
            
            Button(action: {
                self.isShowPhotoLibrary = true
            }, label: {
                ZStack{
                    Circle()
                        .stroke(lineWidth: 2)
                        .frame(width: 40, height: 40)
                    
                    Circle()
                        .foregroundColor(Color.white)
                    
                    Image(systemName: "camera.fill")
                }
                .fixedSize()
                .accentColor(.black)
            }).offset(x: 33, y: -35)
            
        }.sheet(isPresented: $isShowPhotoLibrary) {
            ImagePicker(selectedImage: self.$image, sourceType: .photoLibrary)
        }
    }
}

struct UserPicture_Previews: PreviewProvider {
    static var previews: some View {
        UserPicture()
    }
}
