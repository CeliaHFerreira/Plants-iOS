//
//  ListPlantCellViewController.swift
//  Plant-IOS
//
//  Created by Celia Herrera Ferreira on 30/04/2021.
//

import Foundation
import UIKit

class ListPlantCellViewController: UITableViewCell {
    
    @IBOutlet weak var plantImage: UIImageView!
    @IBOutlet weak var plantName: UILabel!
    @IBOutlet weak var plantCientName: UILabel!
    @IBOutlet weak var plantFamilyName: UILabel!
    @IBOutlet weak var plantTaxonomy: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    
    // Set the identifier for the custom cell
    
    @IBAction func pressLike(_ sender: Any) {
        print(" se ha presionado like")
    }
    
}
