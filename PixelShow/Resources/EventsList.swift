//
//  EventsList.swift
//  PixelShow
//
//  Created by Igor Marques Vicente on 30/03/21.
//

import Foundation
import SwiftUI

func listEvents() -> [Event] {
    return listEventsDay2() + listEventsDay2()
}

func listEventsDay1() -> [Event] {
    var events: [Event] = []
    
    events.append(Event(title: "Desenho de Imprensa", textDescription: "Ser desenhista e trabalhar com desenho passa por muitas possibilidades e uma delas é ser desenhista de imprensa. Sobre isso, de como é o trabalho do desenhista de veículo de imprensa, visto através da experiência pessoal do ilustrador, é que se trata esta conversa. Como foi o início, como é a rotina e quais são os desafios do trabalho na redação de um grande jornal, como é trabalhar o desenho na imprensa, o futuro incerto da profissão. Cartunistas, ilustradores, publicitários, artistas, jornalistas, esses são algumas das profissões para quem realiza este ofício.", videoDescription: "", date: "17/8", hour: "8:30", speakerName: "Eduardo Baptistão", speakerPhoto: Image("Eduardo Baptistao")))
    
    events.append(Event(title: "Clubhouse: A Revolução Criativa é Colaborativa ", textDescription: "Clubhouse é uma nova rede social, criada em 2020 em plena pandemia, e que está conseguindo dar voz e espaço para conversas e encontro imprevisíveis, espontâneos e horizontais. Diferente de todas as outras redes sociais, pois somente trabalha com áudios, ela abre espaço para a troca de conhecimento verdadeira e transforma o espaço da internet em um lugar de colaboração e consciência coletiva. Saiba tudo sobre a rede social feita para estimular a criatividade e acelerar a revolução criativa.", videoDescription: "", date: "17/8", hour: "9:15", speakerName: "Lucas Foster", speakerPhoto: Image("Lucas Foster")))
    
    events.append(Event(title: "Insights para Estruturação e Gestão de Iniciativas Culturais e Criativas ", textDescription: "A partir de ideias e conceitos sobre o mundo criativo, fornecer insights valiosos para a construção e a gestão de projetos culturais bem estruturados, relacionando os pilares da economia criativa. A conversa visa instigar os participantes a definirem melhor os diferencias de suas iniciativas, tornando-os projetos, além de abordar elementos essenciais para seu desenvolvimento e realização.", videoDescription: "", date: "17/8", hour: "10:00", speakerName: "Fernanda Nave", speakerPhoto: Image("Fernanda Nave")))
    
    events.append(Event(title: "Conectando Migrantes à Economia Criativa", textDescription: "O Deslocamento Criativo é um projeto de inciativa de impacto social que visa identificar e contribuir para a sustentabilidade de refugiados e migrantes contemporâneos que atuem, ou queiram atuar, na área da economia criativa. É uma plataforma de fonte para conhecer e contratar pessoas em situação de refúgio que atualmente se encontram em São Paulo, pois a capital paulista hoje é o segundo principal destino dos refugiados que chegam ao Brasil.", videoDescription: "", date: "17/8", hour: "11:30", speakerName: "Maria Nilda", speakerPhoto: Image("Maria Nilda")))
    
    events.append(Event(title: "Oficina de Encadernação", textDescription: "A partir de um sonho é possível coser não só a realidade mas também uma agenda para que isso aconteça. Sobre a artesania desde os tempos da prensa, fazer o próprio caderno é mais que um convite à aventura, é um pedido do aqui e do agora. Conheça o estilo japonês de encadernação Midori e de como é fácil se organizar quando se tem na própria mão o seu estilo.\n\nNela aprenderá como se faz um caderno super funcional e criativo, que pode ser usado para qualquer finalidade, desde bloco de notas, planner manual, bullet journal ou até mesmo em sua própria agenda pessoal.", videoDescription: "", date: "17/8", hour: "12:15", speakerName: "Cláudio Brasil", speakerPhoto: Image("Claudio Brasil")))
    
    events.append(Event(title: "Desafios da Programação Cultural", textDescription: "Nesta conversa ele traz muito de sua experiência, além de nos falar sobre os desafios da programação cultural na cidade de São Paulo.", videoDescription: "", date: "17/8", hour: "13:00", speakerName: "Hugo Possolo", speakerPhoto: Image("Hugo Possolo")))
    
    return events
}

func listEventsDay2() -> [Event] {
    var events: [Event] = []
    
    events.append(Event(title: "Desenho de Imprensa", textDescription: "Ser desenhista e trabalhar com desenho passa por muitas possibilidades e uma delas é ser desenhista de imprensa. Sobre isso, de como é o trabalho do desenhista de veículo de imprensa, visto através da experiência pessoal do ilustrador, é que se trata esta conversa. Como foi o início, como é a rotina e quais são os desafios do trabalho na redação de um grande jornal, como é trabalhar o desenho na imprensa, o futuro incerto da profissão. Cartunistas, ilustradores, publicitários, artistas, jornalistas, esses são algumas das profissões para quem realiza este ofício.", videoDescription: "", date: "18/8", hour: "8:30", speakerName: "Eduardo Baptistão", speakerPhoto: Image("Eduardo Baptistao")))
    
    events.append(Event(title: "Clubhouse: A Revolução Criativa é Colaborativa ", textDescription: "Clubhouse é uma nova rede social, criada em 2020 em plena pandemia, e que está conseguindo dar voz e espaço para conversas e encontro imprevisíveis, espontâneos e horizontais. Diferente de todas as outras redes sociais, pois somente trabalha com áudios, ela abre espaço para a troca de conhecimento verdadeira e transforma o espaço da internet em um lugar de colaboração e consciência coletiva. Saiba tudo sobre a rede social feita para estimular a criatividade e acelerar a revolução criativa.", videoDescription: "", date: "18/8", hour: "9:15", speakerName: "Lucas Foster", speakerPhoto: Image("Lucas Foster")))
    
    
    events.append(Event(title: "Insights para Estruturação e Gestão de Iniciativas Culturais e Criativas ", textDescription: "A partir de ideias e conceitos sobre o mundo criativo, fornecer insights valiosos para a construção e a gestão de projetos culturais bem estruturados, relacionando os pilares da economia criativa. A conversa visa instigar os participantes a definirem melhor os diferencias de suas iniciativas, tornando-os projetos, além de abordar elementos essenciais para seu desenvolvimento e realização.", videoDescription: "", date: "18/8", hour: "10:00", speakerName: "Fernanda Nave", speakerPhoto: Image("Fernanda Nave")))
    
    events.append(Event(title: "Conectando Migrantes à Economia Criativa", textDescription: "O Deslocamento Criativo é um projeto de inciativa de impacto social que visa identificar e contribuir para a sustentabilidade de refugiados e migrantes contemporâneos que atuem, ou queiram atuar, na área da economia criativa. É uma plataforma de fonte para conhecer e contratar pessoas em situação de refúgio que atualmente se encontram em São Paulo, pois a capital paulista hoje é o segundo principal destino dos refugiados que chegam ao Brasil.", videoDescription: "", date: "18/8", hour: "11:30", speakerName: "Maria Nilda", speakerPhoto: Image("Maria Nilda")))
    
    events.append(Event(title: "Oficina de Encadernação", textDescription: "A partir de um sonho é possível coser não só a realidade mas também uma agenda para que isso aconteça. Sobre a artesania desde os tempos da prensa, fazer o próprio caderno é mais que um convite à aventura, é um pedido do aqui e do agora. Conheça o estilo japonês de encadernação Midori e de como é fácil se organizar quando se tem na própria mão o seu estilo.\n\nNela aprenderá como se faz um caderno super funcional e criativo, que pode ser usado para qualquer finalidade, desde bloco de notas, planner manual, bullet journal ou até mesmo em sua própria agenda pessoal.", videoDescription: "", date: "18/8", hour: "12:15", speakerName: "Cláudio Brasil", speakerPhoto: Image("Claudio Brasil")))
    
    events.append(Event(title: "Desafios da Programação Cultural", textDescription: "Nesta conversa ele traz muito de sua experiência, além de nos falar sobre os desafios da programação cultural na cidade de São Paulo.", videoDescription: "", date: "18/8", hour: "13:00", speakerName: "Hugo Possolo", speakerPhoto: Image("Hugo Possolo")))
    
    return events
}
