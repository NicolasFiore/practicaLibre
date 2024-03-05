//
//  FavoritosViewController.swift
//  practicaLibre
//
//  Created by Nicolás Fiore on 09/02/2024.
//

import UIKit

class FavoritosViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var productosFavoritos: [ProductoModelo] = []
    let vc = ViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ProductosCardTableViewCell", bundle: nil), forCellReuseIdentifier: "mycustomcell")
        
        productosFavoritos.append(vc.producto1)
        productosFavoritos.append(vc.producto2)
    }
    
}

extension FavoritosViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productosFavoritos.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycustomcell", for: indexPath) as? ProductosCardTableViewCell
        
        cell?.imagenProducto.image = productosFavoritos[indexPath.row].imagen
        cell?.nombreProducto.text = productosFavoritos[indexPath.row].nombre
        cell?.precioProducto.text = " $\(productosFavoritos[indexPath.row].precio)"
        
        return cell!
    }
    
    
}
