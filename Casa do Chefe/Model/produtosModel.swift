//
//  produtosModel.swift
//  Casa do Chefe
//
//  Created by Mauro Sys One on 3/29/22.
//

import Foundation


struct Produtos: Identifiable, Hashable{
    
    var id = UUID()
    var name: String
    var preco: String
    var image: String
    
}
