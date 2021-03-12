import UIKit

//         AULA 02

//let nome: String = "sushi"
//let felicidade: Int = 5
//let calorias: Double = 79.5
//
//let vegetal: Bool = false
//
//func alimentoConsumido(_ nome: String, _ caloria : Double) {
//    print("O alimento consumido foi: \(nome), com calorias: \(caloria)")
//}
//
//alimentoConsumido(nome, calorias)


//         AULA 03.1

//let totalDeCalorias = [50.5, 100, 300, 500, 450]
//print (totalDeCalorias)
//
//print("Primeira forma de escrever um for:")
//
//for i in 0...3 {
//    print(totalDeCalorias[i])
//}
//
//print("Segunda forma de escrever um for:")
//
//for i in 0...totalDeCalorias.count-1 {
//    print(totalDeCalorias[i])
//}
//
//print("Terceira forma de escrever um for:")
//
//for caloria in totalDeCalorias {
//    print(caloria)
//}


//         AULA 03.2

//let totalDeCalorias = [50.5, 100]
//
//func todasCalorias(totalDeCalorias: Array<Double>) -> Double {
//    var total = 0.0
//
//    for caloria in totalDeCalorias {
//        total += caloria
//     }
//
//    return total
//}
//
//print(todasCalorias(totalDeCalorias: totalDeCalorias))
//print(todasCalorias(totalDeCalorias: [50, 100, 500, 750, 50.50]))


//         AULA 04

// Classe

class Refeicao {
    var nome: String?         // ? optional - a var pode ter valor ou não
    var felicidade: String?
  }

// Instanciando uma classe

let refeicao = Refeicao()
refeicao.nome = "Churros"
refeicao.felicidade = "4"

// CUIDADO! - não é a forma segura de fazer
//print("\(refeicao.nome!) \(refeicao.felicidade!)")    ! "para extrair - "force unwrap"

//if refeicao.nome != nil {
//    print(refeicao.nome!)
//}

// Boas práticas para extrair valores opicionais:

// if let

if let nome = refeicao.nome {      // a variável só existe dentro do escopo do if
    print(nome)
}

// guard let

func exibeNomeRefeicao() {
    guard let nome = refeicao.nome else {     // a variável continua existindo até o método acabar
        return
    }
    print(nome)
}

exibeNomeRefeicao()


let numero = Int("5")  // Optional Int -> vai tentar converter a string para int

if let n = numero {
    print(n)
} else {
    print("Erro ao converter string para int")
}



//         AULA 05

class MinhaRefeicao {
    
    // Atributos
    
    var nome: String
    var felicidade: String
    var itens: Array<Item> = []
    
    // Construtor
    
    init (nome: String, felicidade: String) {
        self.nome = nome
        self.felicidade = felicidade
    }
    
    // Métodos
    
    func totalDeCalorias () -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
         }
        return total
    }
}


class Item {
    var nome: String
    var calorias: Double
    
    init (nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}


let arroz = Item(nome: "Arroz", calorias: 51.0)
let feijao = Item(nome: "Feijão", calorias: 90.0)
let contraFile = Item(nome: "Contra Filé", calorias: 287.0)



let refeicao2 = MinhaRefeicao(nome: "Almoço", felicidade: "5")
refeicao2.itens.append(arroz)
refeicao2.itens.append(feijao)
refeicao2.itens.append(contraFile)

print("Refeição: \(refeicao2.nome)")
print("Quantidade de calorias: \(refeicao2.totalDeCalorias())")

if let primeiroItemDaLista = refeicao2.itens.first {
    print("O primeiro item da lista é: \(primeiroItemDaLista.nome)")
}


