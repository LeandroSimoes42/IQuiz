//
//  Questoes.swift
//  iQuiz
//
//  Created by Lorenzo Campos on 28/07/23.
//

import Foundation

struct Questoes {
    var titulo: String
    var respostas: [String]
    var indexResposta: Int
}

let questoes: [Questoes] = [
    Questoes(titulo: "Quem era o Darth vader?", respostas: ["Luke Skywalker", "Obi-wan kenobi", "Anakin Skywalker"], indexResposta: 2),
    Questoes(titulo: "Luke Destruiu a estrela da morte quantas vezes?", respostas: ["1 vez", "2 vezes", "nenhuma vez"], indexResposta: 1),
    Questoes(titulo: "Qual era a cor do sabre de luz do mestre Mace Windu", respostas: ["verde", "azul", "roxo"], indexResposta: 2),
]
