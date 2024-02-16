//
//  ProductosCardTableViewCell.swift
//  practicaLibre
//
//  Created by Nicolás Fiore on 15/02/2024.
//

import UIKit

class ProductosCardTableViewCell: UITableViewCell {
    @IBOutlet weak var nombreProducto: UILabel!
    @IBOutlet weak var precioProducto: UILabel!
    @IBOutlet weak var imagenProducto: UIImageView!
    @IBOutlet weak var botonFavoritos: UIButton!
    
    var estadoFavorito = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    @IBAction func agregarQuitarFavoritos(_ sender: Any) {
        if estadoFavorito == false {
            estadoFavorito = true
            botonFavoritos.setImage(UIImage.init(systemName: "heart.fill"), for: .normal)
            print(nombreProducto.text ?? "no hay nombre")
        }
        else {
            estadoFavorito = false
            botonFavoritos.setImage(UIImage.init(systemName: "heart"), for: .normal)
            print("\(nombreProducto.text) se quito de favoritos" ?? "no hay nombre")

        }
        
    }
    
}
