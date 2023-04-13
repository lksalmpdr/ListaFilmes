//
//  DetalhesFilmeViewController.swift
//  Lista de Filmes
//
//  Created by Pedro Lucas de Almeida on 28/06/21.
//

import Foundation
import UIKit

class DetalhesFilmeViewController:UIViewController
{
    var filme:Filme?
    
    @IBOutlet weak var imagemFilme: UIImageView!
    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var labelDescricao: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagemFilme.image = filme?.imagem
        labelTitulo.text = filme?.titulo
        labelDescricao.text = filme?.descricao
    }
}
