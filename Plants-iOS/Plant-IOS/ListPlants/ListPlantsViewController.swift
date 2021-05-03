//
//  ListPlantsViewController.swift
//  Plant-IOS
//
//  Created by Celia Herrera Ferreira on 26/04/2021.
//


import UIKit

class ListPlantsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let server = ServerCalls()
    var plantList: [PlantsBody] = []

    // Returning the xib file after instantiating it
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ListPlantCell", bundle: nil), forCellReuseIdentifier: "ListPlantCell")
        server.retrievePlantList { (plants) in
            self.plantList = plants.data
            self.tableView.reloadData()
        } failure: { (_: Error?) in
            print("Ha ocurrido un error")
        }
    }
    
    //    func retrievePlantsList() {
    //        guard let url = URL(string: "https:\\") else { return } //Falta meter url plantas
    //        URLSession.shared.dataTask(with: url) { (data, response, error) in
    //
    //            guard let json = data else { return }
    //            //Serializamos los datos
    //            do {
    //                let decoder = JSONDecoder()
    //                //self.dataArray = try decoder.decode([Plant].self, from: json)
    //            } catch let error {
    //                print("Ha ocurrido un error: \(error.localizedDescription)")
    //            }
    //        }.resume()
    //    }
    //
    //
    //    func navDetail(plantID: Int){
    //        let vc = DetailPlantViewController()
    //        let nc = UINavigationController(rootViewController: vc)
    //        present(nc, animated: true, completion: nil)
    //    }
    
}

extension ListPlantsViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell( withIdentifier: "ListPlantCell", for: indexPath) as! ListPlantCell
        if let a = plantList.first {
            cell.plantName.text = plantList == nil ? "" : plantList[indexPath.row].commonName
            cell.plantTaxonomy.text = "Taxonomy"
            cell.plantCName.text = "NombreCientifico"
            cell.plantFamily.text = "La family"
            cell.plantImage = UIImageView(image: UIImage(systemName: "leaf.arrow.triangle.circlepath"))
        } else {
            cell.plantName.text = "hola"
            cell.plantTaxonomy.text = "Taxonomy"
            cell.plantCName.text = "NombreCientifico"
            cell.plantFamily.text = "La family"
            cell.plantImage = UIImageView(image: UIImage(systemName: "leaf.arrow.triangle.circlepath"))
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 320
        
    }
}
