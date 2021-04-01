//
//  Video.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 31/03/21.
//

import SwiftUI
import AVKit

struct Video: View {
    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer(url:  URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4")!))
        }
        .frame(maxWidth: .infinity, minHeight: CGFloat(200))
        .background(Color.gray)
        .cornerRadius(5.0)
        .padding(.top)
        .padding(.bottom, 30)
    }
}

struct Video_Previews: PreviewProvider {
    static var previews: some View {
        Video()
    }
}
