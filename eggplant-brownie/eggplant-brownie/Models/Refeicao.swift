//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Cristiane Goncalves Uliana on 12/03/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit

class Refeicao: NSObject {
    
        // Atributos
        
        let nome: String
        let felicidade: Int
        var itens: Array<Item> = []
        
        // Construtor - Init
        
    init (nome: String, felicidade: Int, itens: [Item] = []) {
            self.nome = nome
            self.felicidade = felicidade
            self.itens = itens
        }
        
        // Métodos
        
        func totalDeCalorias() -> Double {
            var total = 0.0
            
            for item in itens {
                total += item.calorias
            }
            return total
        }
    
        func detalhes() -> String {
            
            var mensagem = "Felicidade: \(felicidade)"
            
            for item in itens {
                mensagem += ", \(item.nome) - calorias: \(item.calorias)"
            }
            
            return mensagem
        
        }
}

