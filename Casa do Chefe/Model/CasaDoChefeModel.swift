//
//  CasaDoChefeModel.swift
//  Casa do Chefe
//
//  Created by Mauro Sys One on 3/28/22.
//

import Foundation



struct ProductCasaChefe: Identifiable, Hashable{
    var id = UUID()
    var nome: String
    var preco: String
    var imagem: String
}
