//
//  SettingsViewController.swift
//  Plant-IOS
//
//  Created by Celia Herrera Ferreira on 26/04/2021.
//

import Foundation

import UIKit

class SettingsViewController: UIViewController {
    
    let router = EnrolmentRouter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    
    
    
    @IBAction func pressLogOut(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "isNotLogged")
        UserDefaults.standard.synchronize()

        router.go2Login(initial: self)

    }
    
    
//    
//    @IBAction func pressLogOut(_ sender: Any) {
//        router.go2Login(initial: self)
//    }
    
}
