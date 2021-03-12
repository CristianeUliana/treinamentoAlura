//
//  Item.swift
//  eggplant-brownie
//
//  Created by Cristiane Goncalves Uliana on 12/03/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit

class Item: NSObject {
    let nome: String
    let calorias: Double
    
    init (nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}
