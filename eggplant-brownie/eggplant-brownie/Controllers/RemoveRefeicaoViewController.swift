//
//  RemoveRefeicaoViewController.swift
//  eggplant-brownie
//
//  Created by Cristiane Goncalves Uliana on 15/03/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit

class RemoveRefeicaoViewController {
    
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
                                             // executado somente depois, quando o usuário fizer uma ação
    func exibe(_ refeicao: Refeicao, handler: @escaping (UIAlertAction) -> Void) {
        
        let alerta = UIAlertController(title: refeicao.nome, message: refeicao.detalhes(), preferredStyle: .alert)
        let botaoCancelar = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alerta.addAction(botaoCancelar)
        let botaoRemover = UIAlertAction(title: "Remover", style: .destructive, handler: handler)
        alerta.addAction(botaoRemover)
        controller.present(alerta, animated: true, completion: nil)
        
    }
}
