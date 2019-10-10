

import Foundation
import UIKit

class DetailMovieViewController: UIViewController {
    
    var movie: Filme!
    
    
    @IBOutlet weak var detailMovieImage: UIImageView!
    @IBOutlet weak var detailMovieTitle: UILabel!
    @IBOutlet weak var detailMovieDesc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailMovieImage.image = movie.imagem
        detailMovieTitle.text = movie.titulo
        detailMovieDesc.text = movie.descricao
        
        
    }
}
