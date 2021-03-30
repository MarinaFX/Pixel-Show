//
//  EventNews.swift
//  PixelShow
//
//  Created by Julia Silveira de Souza on 29/03/21.
//

import SwiftUI

struct EventNews: View {
    var body: some View {

        VStack {
            ScrollView{
                Text("O maior Festival de Criatividade da América Latina")
                    .bold()
                    .frame(width: 350, height: 70, alignment: .leading)

                Text("O Pixel Show tem participação de criativos (estudantes e profissionais) nas áreas de ilustração, motion graphics, design gráfico, quadrinhos, 3D, artes visuais, graffiti, moda, arquitetura, publicidade, tecnologia, design de produto, FX, make-up, voice, XR, cinema, games, CGI, entre outras áreas criativas, além de colecionadores de arte e pessoas interessadas no tema criatividade.")
                    .frame(width: 340, height: nil, alignment: .leading)

                Image("Post1")
                    .padding()

                Text("O evento é dividido em 3 áreas: a feira de criatividade que é uma área gratuita onde acontece a maior parte das atividades, workshops e a conferência (circuito de palestras que apresenta cases, histórias, processos, economia criativa, novas ideias e inovação).")
                    .frame(width: 340, height: nil, alignment: .leading)
                }
            }
        }
    }
