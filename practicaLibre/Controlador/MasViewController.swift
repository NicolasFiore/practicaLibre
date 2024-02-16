//
//  MasViewController.swift
//  practicaLibre
//
//  Created by Nicolás Fiore on 08/02/2024.
//

import UIKit

class MasViewController: UIViewController {

    @IBOutlet weak var tablaOpciones: UITableView!
    
    var opcciones = [["Inicio", "Buscar", "Notificaciones", "Mis compras", "Favoritos", "Ofertas", "Cupones", "Prestamos", "Mercado play", "Historial", "Mi cuenta", "Ayuda"],["Supermercado", "Moda", "Más vendidos", "Tiendas oficiales", "Categorias"],["Resumen", "Vender", "Publicaciones", "Bio libre", "Mercado Shops"],["Acerca de Mercado Libre"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tablaOpciones.dataSource = self
        tablaOpciones.delegate = self
        
        print(opcciones[0][0])
    }

}

extension MasViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return opcciones[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return opcciones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell1 = tableView.dequeueReusableCell(withIdentifier: "celdaOpciones1")
        if cell1 == nil{
            cell1 = UITableViewCell(style: .default, reuseIdentifier: "celdaOpciones1")
            cell1?.textLabel?.font = UIFont.systemFont(ofSize: 18)
            cell1?.accessoryType = .disclosureIndicator
        }
        cell1!.textLabel?.text = opcciones[indexPath.section][indexPath.row]
        return cell1!
    }
}

extension MasViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath{
        case [0,0]:
            performSegue(withIdentifier: "inicio", sender: Any?.self)
            print("Vas a ir al inicio")
        case [0,2]:
            performSegue(withIdentifier: "notificaciones", sender: Any?.self)
            print("Vas a ir al notificaciones")
        case [0,3]:
            performSegue(withIdentifier: "misCompras", sender: Any?.self)
            print("Vas a ir al mis compras")
        case [0,4]:
            performSegue(withIdentifier: "favoritos", sender: Any?.self)
            print("Vas a ir al favoritos")
        default:
            print("este no hacen nada")
        }
    }
}

