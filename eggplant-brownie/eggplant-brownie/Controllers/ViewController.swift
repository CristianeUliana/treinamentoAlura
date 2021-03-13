//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Cristiane Goncalves Uliana on 12/03/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tableViewController: RefeicoesTableViewController?

    @IBOutlet weak var nomeTextField: UITextField?
    @IBOutlet weak var felicidadeTextField: UITextField?
    
    @IBAction func adicionar(_ sender: Any) {
        
        guard let nomeDaRefeicao = nomeTextField?.text else {
            return
        }
        
        guard let felicidadeDaRefeicao = felicidadeTextField?.text!, let felicidade =  Int(felicidadeDaRefeicao) else {
            return
        }
        
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
    
        print("Comi \(refeicao.nome) e fiquei com felicidade \(refeicao.felicidade)")
        
        tableViewController?.add(refeicao)
        
        navigationController?.popViewController(animated: true)
    }
}

