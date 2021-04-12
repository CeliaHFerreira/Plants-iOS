//
//  TabBarViewModel.swift
//  Plant-IOS
//
//  Created by Celia Herrera Ferreira on 12/04/2021.
//

import Foundation
import UIKit

class TabBarViewModel: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let vc1 = UINavigationController(rootViewController: ListPlantsViewModel())
        let vc2 = UINavigationController(rootViewController: SettingsViewModel())
        let vc3 = UINavigationController(rootViewController: MapsViewModel())

        viewControllers = [vc1, vc2, vc3]
    }

}
