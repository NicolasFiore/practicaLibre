//
//  MisComprasViewController.swift
//  practicaLibre
//
//  Created by Nicolás Fiore on 07/02/2024.
//

import UIKit

class MisComprasViewController: UIViewController {

    @IBOutlet weak var buscarCompras: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buscarCompras.setBackgroundImage(UIImage(), for: .any, barMetrics: .default)
        buscarCompras.delegate = self
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        buscarCompras.resignFirstResponder()
    }

    @IBAction func navegarInicio(_ sender: Any) {
        let viewController = self.storyboard!.instantiateViewController(withIdentifier: "inicio") as! ViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

extension MisComprasViewController:UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        buscarCompras.resignFirstResponder()
    }
}
