//
//  ViewController.swift
//  Lista de Filmes
//
//  Created by Pedro Lucas de Almeida on 21/06/21.
//

import UIKit

class TableViewController: UITableViewController {
    
    var filmes : [Filme] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme:Filme
        
        filme = Filme("007 - Spectre", "descricao 1", #imageLiteral(resourceName: "filme1"))
        filmes.append( filme )
        
        filme = Filme("Star Wars", "descricao 2", #imageLiteral(resourceName: "filme2"))
        filmes.append( filme )
        
        filme = Filme("Impacto Mortal",  "descricao 3", #imageLiteral(resourceName: "filme3"))
        filmes.append( filme )
        
        filme = Filme("Deadpool", "descricao 4", #imageLiteral(resourceName: "filme4"))
        filmes.append( filme )
        
        filme = Filme("O Regresso", "descricao 5", #imageLiteral(resourceName: "filme5"))
        filmes.append( filme )
        
        filme = Filme("A Herdeira", "descricao 6", #imageLiteral(resourceName: "filme6"))
        filmes.append( filme )
        
        filme = Filme("Caçadores de emoção", "descricao 7", #imageLiteral(resourceName: "filme7"))
        filmes.append( filme )
        
        filme = Filme("Regresso do mal", "descricao 8", #imageLiteral(resourceName: "filme8"))
        filmes.append( filme )
        
        filme = Filme("Tarzan", "descricao 9", #imageLiteral(resourceName: "filme9"))
        filmes.append( filme )
        
        filme = Filme("HardCore", "descricao 10", #imageLiteral(resourceName: "filme10"))
        filmes.append( filme )
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme:Filme = filmes[ indexPath.row ]
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseID", for: indexPath) as? FilmeCellController
        
        celula?.imageFilme?.image = filme.imagem
        celula?.labelTitulo?.text = filme.titulo
        celula?.labelDescricao?.text = filme.descricao
        
        
        celula?.imageFilme?.layer.cornerRadius = 42
        celula?.imageFilme?.clipsToBounds = true
    
        return celula!
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if( segue.identifier == "detalhesFilmes" )
        {
            if let indexPath = tableView.indexPathForSelectedRow
            {
                let filmeSelecionado = self.filmes[indexPath.row]
                
                let vcDestino = segue.destination as? DetalhesFilmeViewController
                
                vcDestino?.filme = filmeSelecionado
            }
        }
    }


}

