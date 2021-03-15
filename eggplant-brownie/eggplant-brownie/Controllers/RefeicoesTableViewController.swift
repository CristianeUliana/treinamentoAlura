//
//  RefeicoesTableViewController.swift
//  eggplant-brownie
//
//  Created by Cristiane Goncalves Uliana on 12/03/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit


class RefeicoesTableViewController: UITableViewController, AdicionaRefeicaoDelegate {
    
    var refeicoes: [Refeicao] = []
    
    
    override func viewDidLoad() {
        refeicoes = RefeicaoDao().recupera()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return refeicoes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao.nome
        
        let lonPress = UILongPressGestureRecognizer(target: self, action: #selector(mostrarDetalhes(_:)))
        celula.addGestureRecognizer(lonPress)
        
        return celula
    }
    
    func add(_ refeicao: Refeicao) {
        refeicoes.append(refeicao)
        tableView.reloadData()
        RefeicaoDao().save(refeicoes)
        
    }
    
    @objc func mostrarDetalhes(_ gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            let celula = gesture.view as! UITableViewCell
            guard let indexPath = tableView.indexPath(for: celula) else { return }
            let refeicao = refeicoes[indexPath.row]
            RemoveRefeicaoViewController(controller: self).exibe(refeicao, handler: {alerta in      //closure - função dentro de outra
                self.refeicoes.remove(at: indexPath.row)
                self.tableView.reloadData()
            })
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? ViewController {
            viewController.delegate = self
    }
    }
 }
