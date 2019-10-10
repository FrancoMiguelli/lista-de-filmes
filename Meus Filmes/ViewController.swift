

import UIKit

class ViewController: UITableViewController {
    
    var filmes: [Filme] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        
        filme = Filme(titulo: "007 - Spectre", descricao: "James Bond chega à Cidade do México e está pronto para eliminar Marco Sciarra sem que o chef M saiba da missão. O caso leva à suspensão temporária do agente, que passa a ser constantemente vigiado pelo governo britânico graças a uma tecnologia implantada em seu corpo por Q. Na tentativa de despistar os inimigos e até mesmo alguns de seus parceiros de trabalho, ele se responsabiliza por ajudar a filha de um desafeto. Toda a situação o leva ao centro de uma temida organização denominada Spectre.", imagem: UIImage(named: "filme1")!)
        filmes.append( filme )
        
        filme = Filme(titulo: "Star Wars", descricao: "A queda de Darth Vader e do Império levou ao surgimento de uma nova força sombria: a Primeira Ordem. Eles procuram o jedi Luke Skywalker, desaparecido. A resistência tenta desesperadamente encontrá-lo antes para salvar a galáxia.", imagem: UIImage(named: "filme2")!)
        filmes.append( filme )
        
        filme = Filme(titulo: "Impacto Mortal", descricao: "Descrição 2", imagem: UIImage(named: "filme3")!)
        filmes.append( filme )
        
        filme = Filme(titulo: "DeadPool", descricao: "Descrição 2", imagem: UIImage(named: "filme4")!)
        filmes.append( filme )
        
        filme = Filme(titulo: "O Regresso", descricao: "Descrição 2", imagem: UIImage(named: "filme5")!)
        filmes.append( filme )
        
        filme = Filme(titulo: "A Herdeira", descricao: "Descrição 2", imagem: UIImage(named: "filme6")!)
        filmes.append( filme )
        
        filme = Filme(titulo: "Caçadores de Emoção", descricao: "Descrição 2", imagem: UIImage(named: "filme7")!)
        filmes.append( filme )
        
        filme = Filme(titulo: "Regresso do Mal", descricao: "Descrição 2", imagem: UIImage(named: "filme8")!)
        filmes.append( filme )
        
        filme = Filme(titulo: "Tarzan", descricao: "Descrição 2", imagem: UIImage(named: "filme9")!)
        filmes.append( filme )
        
        filme = Filme(titulo: "Hardcore", descricao: "Descrição 2", imagem: UIImage(named: "filme10")!)
        filmes.append( filme )
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let filme: Filme = filmes[indexPath.row]
        let celula = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellFilmes
        
        celula.ccellImageView.image = filme.imagem
        celula.labelTitulo.text = filme.titulo
        celula.labelDescricao.text = filme.descricao
        
        celula.ccellImageView.layer.cornerRadius = 42
        celula.ccellImageView.clipsToBounds = true
        
        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailMovie" {
            
            if let indexPath = tableView.indexPathForSelectedRow {
                
                let movieSelected = self.filmes[indexPath.row]
                let viewContrtollerDest = segue.destination as! DetailMovieViewController
                viewContrtollerDest.movie = movieSelected
                
            }
        }
    }


}

