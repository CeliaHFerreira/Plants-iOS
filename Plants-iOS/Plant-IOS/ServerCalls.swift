//
//  ServerCalls.swift
//  Plant-IOS
//
//  Created by Celia Herrera Ferreira on 01/05/2021.
//

import Foundation

class ServerCalls {
    let treffleApikey = "R4WU0XIPqHO2CBhRT3gHuZd4RGwutoOtqlx79zIVjZo"
    
    func retrievePlantList(success: @escaping (_ plantlist: Plants) -> (), failure: @escaping (_ error: Error?) ->())  {
        let url = URL(string: "https://trefle.io/api/v1/plants?token=\(treffleApikey)")!
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let json = data else { return }
              do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(Plants.self, from: json)
                success(response)
            } catch let error {
                failure(error)
            }
        }.resume()

    }
}
  
