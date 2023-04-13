//
//  Filme.swift
//  Lista de Filmes
//
//  Created by Pedro Lucas de Almeida on 21/06/21.
//

import UIKit

class Filme
{
    let titulo: String?
    let descricao: String?
    let imagem: UIImage?
    
    init(_ t:String, _ d:String, _ i:UIImage)
    {
        self.titulo = t
        self.descricao = d
        self.imagem = i
    }
}
