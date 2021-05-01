//
//  DetailPlantViewController.swift
//  Plant-IOS
//
//  Created by Celia Herrera Ferreira on 26/04/2021.
//

import UIKit
class DetailPlantViewController: UIViewController {
    
    private let plantID : Int = 0
    


    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func retrievePlantList() {
        guard let url = URL(string: "https:\\") else { return } //Falta meter url plantas
        URLSession.shared.dataTask(with: url) { (data, response, error) in
        
            guard let json = data else { return }
            //Serializamos los datos
            do {
                let decoder = JSONDecoder()
                //self.dataArray = try decoder.decode([Plant].self, from: json)
            } catch let error {
                print("Ha ocurrido un error: \(error.localizedDescription)")
            }
        }.resume()
    }
    
}


