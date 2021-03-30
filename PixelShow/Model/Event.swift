//
//  File.swift
//  PixelShow
//
//  Created by Igor Marques Vicente on 30/03/21.
//

import Foundation
import SwiftUI

struct Event {
    var title: String
    var textDescription: String
    var videoDescription: String // refactor to type Video ?
    var date: String
    var hour: String
    // var contents: [Interest] ?
    
    // Maybe a new class on future
    var speakerName: String
    var speakerPhoto: Image
    // var socialNetworksLinks: [] ...
}
