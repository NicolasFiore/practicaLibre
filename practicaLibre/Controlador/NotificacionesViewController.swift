//
//  NotificacionesViewController.swift
//  practicaLibre
//
//  Created by Nicolás Fiore on 09/02/2024.
//

import UIKit

class NotificacionesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var notificaciones: [NotificacionesModelo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.register(UINib(nibName: "NotificacionTableViewCell", bundle: nil), forCellReuseIdentifier: "celdaNotificacion")
        
        var notificacion1 = NotificacionesModelo(titulo: "¡Nicolás tu iphone 15 te está esperando!", imagen: UIImage.iphone15)
        var notificacion2 = NotificacionesModelo(titulo: "¡Nicolás tus AirPods Pro 2 te está esperando!", imagen: UIImage.airpodsPro2)
        notificaciones.append(notificacion1)
        notificaciones.append(notificacion2)
    }

}
extension NotificacionesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notificaciones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaNotificacion", for: indexPath) as? NotificacionCardTableViewCell
        cell?.titulo.text = notificaciones[indexPath.row].titulo
        cell?.imagen.image = notificaciones[indexPath.row].imagen
        return cell!
    }
}
