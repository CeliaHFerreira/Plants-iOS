//
//  ListPlantsViewModel.swift
//  Plants-iOS
//
//  Created by Celia Herrera Ferreira on 10/04/2021.
//

import Foundation


class ListPlantsViewModel {
  
    var refresData = { () -> () in }
    
    var dataArray: [Plant] = [] {
        didSet {
            refresData()
        }
    }
    
    //Obtenemos los datos de la api 
    func retrievePlantsList() {
        guard let url = URL(string: "https:\\") else { return } //Falta meter url plantas
        URLSession.shared.dataTask(with: url) { (data, response, error) in
        
            guard let json = data else { return }
            //Serializamos los datos
            do {
                let decoder = JSONDecoder()
                self.dataArray = try decoder.decode([Plant].self, from: json)
            } catch let error {
                print("Ha ocurrido un error: \(error.localizedDescription)")
            }
        }.resume()
    }
}

