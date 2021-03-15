//
//  ItemDao.swift
//  eggplant-brownie
//
//  Created by Cristiane Goncalves Uliana on 15/03/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import Foundation

class ItemDao {
    
    func Save(_ itens: [Item]) {
        do {
            let dados = try NSKeyedArchiver.archivedData(withRootObject: itens, requiringSecureCoding: false)
            guard let caminho = recuperaDiretorio() else { return }
            try dados.write(to: caminho)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func recuperaDiretorio () -> URL? {
        guard let diretorio = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
        let caminho = diretorio.appendingPathComponent("itens")
        
        return caminho
    }
    
    func recupera() -> [Item] {
        do {
            guard let caminho = recuperaDiretorio() else { return [] }
            let dados = try Data(contentsOf: caminho)
            let itensSalvos = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(dados) as! [Item]   // outra forma de escrever Array<Item>
            return itensSalvos
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
}
