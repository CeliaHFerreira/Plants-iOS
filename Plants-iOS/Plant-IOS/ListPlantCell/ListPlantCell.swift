//
//  ListPlantCell.swift
//  Plant-IOS
//
//  Created by Celia Herrera Ferreira on 01/05/2021.
//

import UIKit

class ListPlantCell: UITableViewCell {
    @IBOutlet weak var plantName: UILabel!
    
    @IBOutlet weak var plantFamily: UILabel!
    @IBOutlet weak var plantCName: UILabel!
    
    @IBOutlet weak var plantTaxonomy: UILabel!
    
    @IBOutlet weak var plantImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func pressLike(_ sender: Any) {
        print("hola boton")
    }
}
