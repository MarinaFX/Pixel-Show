//
//  EventRow.swift
//  PixelShow
//
//  Created by Igor Marques Vicente on 30/03/21.
//

import SwiftUI

struct EventRow: View {
    var event: Event
    
    var body: some View {
        HStack {
            
            event.speakerPhoto
            
            VStack(alignment: .leading) {
                Text(event.title)
                    .foregroundColor(Color("BlackWhiteDark"))
                    .font(.system(size: 15))
                    .padding(.bottom, -5.0)
                Text(event.speakerName)
                    .font(.caption)
                    .foregroundColor(Color.gray)
            }
            
            Spacer()
            Image(systemName: "heart.fill")
                .foregroundColor(Color("Secondary1"))
                .padding(.top, 2.0)
                
            VStack {
                Text(event.hour)
                Text(event.date)
            }
            .foregroundColor(Color.gray)
            .frame(width: 45, alignment: .center)
            
        }
    }
}

struct EventRow_Previews: PreviewProvider {
    static var previews: some View {
        EventRow(event: Event(title: "Desenho de Imprensa", textDescription: "Ser desenhista e trabalhar com desenho passa por muitas possibilidades e uma delas é ser desenhista de imprensa. Sobre isso, de como é o trabalho do desenhista de veículo de imprensa, visto através da experiência pessoal do ilustrador, é que se trata esta conversa. Como foi o início, como é a rotina e quais são os desafios do trabalho na redação de um grande jornal, como é trabalhar o desenho na imprensa, o futuro incerto da profissão. Cartunistas, ilustradores, publicitários, artistas, jornalistas, esses são algumas das profissões para quem realiza este ofício.", videoDescription: "", date: "17/8", hour: "8:30", speakerName: "Eduardo Baptistão", speakerPhoto: Image("Eduardo Baptistao")))
    }
}
