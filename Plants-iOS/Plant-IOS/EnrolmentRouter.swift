//
//  EnrolmentRouter.swift
//  Plant-IOS
//
//  Created by Celia Herrera Ferreira on 10/04/2021.
//

import Foundation
import UIKit
import SwiftUI

class EnrolmentRouter {
    func go2Register(initial:UIViewController) -> () {
        //initial.navigationController?.pushViewController(RegisterViewController(), animated: true)
    }
    
    func go2Login(initial:UIViewController){
        let vc = initial.storyboard?.instantiateViewController(withIdentifier: "NavigationLogin") as! UINavigationController
        self.switchRootViewController(rootViewController: vc, animated: true, completion: nil)
    }
    
    func go2TabBar(initial: UIViewController)-> (){
        
//        let tabBar = TabBarViewController()
//        let vc1 = MapsViewController()
//        tabBar.setViewControllers([vc1], animated: false)
//        tabBar.modalPresentationStyle = .fullScreen
//        initial.present(tabBar, animated: true)
//

            let vc = initial.storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
            vc.selectedViewController = vc.viewControllers?[0]
        
            self.switchRootViewController(rootViewController: vc, animated: true, completion: nil)
        
//        let tabbar = initial.storyboard?.instantiateViewController(identifier: "tabbarViewID") as TabBarViewController?
//        
        
//        WithSwiftUI
//        let tabBarView = tabBarUI()
//        let host = UIHostingController(rootView: tabBarView)
//        host.modalPresentationStyle = .fullScreen
//        initial.present(host, animated: true)
    }
    
    func switchRootViewController(rootViewController: UIViewController, animated: Bool, completion: (() -> Void)?) {
        guard let window = UIApplication.shared.keyWindow else { return }
        if animated {
            UIView.transition(with: window, duration: 0.5, options: .transitionCrossDissolve, animations: {
                let oldState: Bool = UIView.areAnimationsEnabled
                UIView.setAnimationsEnabled(false)
                window.rootViewController = rootViewController
                UIView.setAnimationsEnabled(oldState)
            }, completion: { (finished: Bool) -> () in
                if (completion != nil) {
                    completion!()
                }
            })
        } else {
            window.rootViewController = rootViewController
        }
    }
    
}
