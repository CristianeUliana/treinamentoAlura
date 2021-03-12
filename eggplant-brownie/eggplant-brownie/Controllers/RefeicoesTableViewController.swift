//
//  RefeicoesTableViewController.swift
//  eggplant-brownie
//
//  Created by Cristiane Goncalves Uliana on 12/03/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit


class RefeicoesTableViewController: UITableViewController {
    
    let refeicoes = [Refeicao(nome: "Macarrão", felicidade: 3), Refeicao(nome: "Pizza", felicidade: 4), Refeicao(nome: "Sushi", felicidade: 5),]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return refeicoes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao.nome
        
        return celula
    }
    
    
    
    
    
}
