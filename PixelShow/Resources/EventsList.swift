//
//  EventsList.swift
//  PixelShow
//
//  Created by Igor Marques Vicente on 30/03/21.
//

import Foundation
import SwiftUI

func listEvents() -> [Event] {
    var events: [Event] = []
    
    events.append(Event(title: "Desenho de Imprensa", textDescription: "Ser desenhista e trabalhar com desenho passa por muitas possibilidades e uma delas é ser desenhista de imprensa. Sobre isso, de como é o trabalho do desenhista de veículo de imprensa, visto através da experiência pessoal do ilustrador, é que se trata esta conversa. Como foi o início, como é a rotina e quais são os desafios do trabalho na redação de um grande jornal, como é trabalhar o desenho na imprensa, o futuro incerto da profissão. Cartunistas, ilustradores, publicitários, artistas, jornalistas, esses são algumas das profissões para quem realiza este ofício.", videoDescription: "", date: "17/8", hour: "8:30", speakerName: "Eduardo Baptistão", speakerPhoto: Image("Eduardo Baptistao")))
    
    events.append(Event(title: "Clubhouse: A Revolução Criativa é Colaborativa ", textDescription: "", videoDescription: "", date: "17/8", hour: "9:15", speakerName: "Lucas Foster", speakerPhoto: Image("Lucas Foster")))
    events.append(Event(title: "Insights para Estruturação e Gestão de Iniciativas Culturais e Criativas ", textDescription: "", videoDescription: "", date: "17/8", hour: "10:00", speakerName: "Fernanda Nave", speakerPhoto: Image("Fernanda Nave")))
    events.append(Event(title: "Conectando Migrantes à Economia Criativa", textDescription: "", videoDescription: "", date: "17/8", hour: "11:30", speakerName: "Maria Nilda", speakerPhoto: Image("Maria Nilda")))
    events.append(Event(title: "Oficina de Encadernação", textDescription: "", videoDescription: "", date: "17/8", hour: "12:15", speakerName: "Cláudio Brasil", speakerPhoto: Image("Cláudio Brasil")))
    events.append(Event(title: "Desafios da Programação Cultural", textDescription: "", videoDescription: "", date: "17/8", hour: "13:00", speakerName: "Hugo Possolo", speakerPhoto: Image("Hugo Possolo")))
    
//    Repetidos
//    events.append(EventModal(title: "Insights para Estruturação e Gestão de Iniciativas Culturais e Criativas ", textDescription: "", videoDescription: "", date: "17/8", hour: "10:00", speakerName: "Fernanda Nave", speakerPhoto: Image("Fernanda Nave")))
//    events.append(EventModal(title: "Conectando Migrantes à Economia Criativa", textDescription: "", videoDescription: "", date: "17/8", hour: "11:30", speakerName: "Maria Nilda", speakerPhoto: Image("Maria Nilda")))
//    events.append(EventModal(title: "Oficina de Encadernação", textDescription: "", videoDescription: "", date: "17/8", hour: "12:15", speakerName: "Cláudio Brasil", speakerPhoto: Image("Cláudio Brasil")))
//    events.append(EventModal(title: "Desafios da Programação Cultural", textDescription: "", videoDescription: "", date: "17/8", hour: "13:00", speakerName: "Hugo Possolo", speakerPhoto: Image("Hugo Possolo")))
    
    return events
}

