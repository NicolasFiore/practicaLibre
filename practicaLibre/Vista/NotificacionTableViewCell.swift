//
//  NotificacionTableViewCell.swift
//  practicaLibre
//
//  Created by Nicolás Fiore on 22/02/2024.
//

import UIKit

class NotificacionTableViewCell: UITableViewCell {
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
