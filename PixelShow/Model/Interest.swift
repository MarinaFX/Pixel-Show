//
//  ContentsModal.swift
//  PixelShow
//
//  Created by Igor Marques Vicente on 30/03/21.
//

import Foundation
import SwiftUI

var interests: [Interest] = load()

func load() -> [Interest]{
    for interest in Interest.allCases {
        interests.append(interest)
    }
    
    return interests
}

enum Interest: String, CaseIterable {    
    case GCI
    case ilustração = "Ilustração"
    case motion = "Motion"
    case graphics = "Graphics"
    case quadrinhos = "Quadrinhos"
    case graffiti = "Graffiti"
    case games = "Games"
    case publicidade = "Publicidade"
    case cinema = "Cinema"
    case tecnologia = "Tecnologia"
    case designGráfico = "Design Gráfico"
    case artesVisuais = "Artes Visuais"
    case makeUp = "Make-Up"
    case D3 = "3D"
    case arquitetura = "Arquitetura"
    case moda = "Moda"
}
