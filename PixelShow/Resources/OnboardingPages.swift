//
//  OnboardingPages.swift
//  PixelShow
//
//  Created by Thaís Fernandes on 05/04/21.
//

import Foundation
import SwiftUI

struct Page {
    let image: String
    let text: String
    let color: Color
}

let onboardingPages = [
    Page(image: "OnboardingA", text: "O Maior Festival de Criatividade\nda América Latina!", color: Color("Secondary3")),
    Page(image: "OnboardingB", text: "Prepare-se para um momento\núnico de exploração criativa!", color: Color("Secondary4")),
    Page(image: "OnboardingC", text: "Uma busca pelo ócio e da\ncriatividade perdida!", color: Color("Secondary5"))
]
