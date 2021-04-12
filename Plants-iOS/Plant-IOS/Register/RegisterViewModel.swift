//
//  RegisterViewModel.swift
//  Plants-iOS
//
//  Created by Celia Herrera Ferreira on 07/04/2021.
//

import Foundation
import UIKit
import FirebaseAuth
import FirebaseAnalytics


class RegisterViewModel: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Analytucs Event
    }
    
    @IBAction func registerButton(_ sender: Any) {
        if let email = emailText.text, let password = passwordText.text {
            //Checkeamos si son validos por un validator...
            Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
                if let result = result, error == nil {
                    let storyBoard : UIStoryboard = UIStoryboard(name: "TabBarView", bundle:nil)
                    let nextViewController = storyBoard.instantiateViewController(withIdentifier: "TabBarViewID") as! TabBarViewModel
                    self.navigationController?.setNavigationBarHidden(true, animated: true)

                    self.show(nextViewController, sender: self)
                    //self.present(nextViewController, animated:true, completion:nil)
                    //Llamamos al router para mandarnos a la pantalla de listado
                    print("hola")
                } else {
                    //Gestionamos error
                    let alertController = UIAlertController(title: "Error", message: "Se ha producido un error", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    self.present(alertController, animated:true, completion: nil)
                }
            }
        }
    }
    
    
}

