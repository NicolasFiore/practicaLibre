//
//  ViewController.swift
//  practicaLibre
//
//  Created by Nicolás Fiore on 06/02/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var barraDeBusqueda: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var direccion: UILabel!
    
    var productos: [ProductoModelo] = []
    public var producFavorito: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //saca los bordes negros
        barraDeBusqueda.setBackgroundImage(UIImage(), for: .any, barMetrics: .default)
        //cambia el fondo
        barraDeBusqueda.barTintColor = .amarilloMeli
        //cambia la barra de busqueda
        barraDeBusqueda.searchTextField.backgroundColor = .barraBuscador
        barraDeBusqueda.delegate = self
        
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ProductosCardTableViewCell", bundle: nil), forCellReuseIdentifier: "mycustomcell")
        
        
        let producto1 = ProductoModelo(nombre: "Xiaomi Mi Band 8", precio: "60.000", imagen: UIImage.miBand8)
        let producto2 = ProductoModelo(nombre: "Iphone 15", precio: "1.000.000", imagen: UIImage.iphone15)
        let producto3 = ProductoModelo(nombre: "Samsung Galaxy S23", precio: "1.000.000", imagen: UIImage.s23)
        let producto4 = ProductoModelo(nombre: "Samsung Galaxy S23 Ultra", precio: "1.700.000", imagen: UIImage.s23Ultra)
        let producto5 = ProductoModelo(nombre: "Samsung Galaxy S23+", precio: "1.300.000", imagen: UIImage.s23Plus)
        let producto6 = ProductoModelo(nombre: "Iphone 15 Pro Max", precio: "1.700.000", imagen: UIImage.iphone15ProMax)
        let producto7 = ProductoModelo(nombre: "AirPods Pro2", precio: "300.000", imagen: UIImage.airpodsPro2)
        
        productos.append(producto1)
        productos.append(producto2)
        productos.append(producto3)
        productos.append(producto4)
        productos.append(producto5)
        productos.append(producto6)
        productos.append(producto7)
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        barraDeBusqueda.resignFirstResponder()
    }
    @IBAction func carrito(_ sender: Any) {
    }
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productos.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycustomcell", for: indexPath) as? ProductosCardTableViewCell
        cell?.imagenProducto.image = productos[indexPath.row].imagen
        cell?.nombreProducto.text = productos[indexPath.row].nombre
        cell?.precioProducto.text = " $\(productos[indexPath.row].precio)"
        return cell!
    }
}

extension ViewController: UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        barraDeBusqueda.resignFirstResponder()
    }
}
