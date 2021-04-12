//
//  LoginViewModel.swift
//  Plants-iOS
//
//  Created by Celia Herrera Ferreira on 07/04/2021.
//

import Foundation
import UIKit
import FirebaseAnalytics
import FirebaseAuth

class LoginViewModel: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        //Analytucs Event
        Analytics.logEvent("LoginView", parameters: ["message" : "Iniciada pantalla de Login"])
    }
    
    //Caso de pulsar un boton
    //Checkeariamos si el email y la contraseña cumplen los estandares que queramos y lo mandariamos a firebase
    @IBAction func loginButton(_ sender: Any) {
        if let email = emailText.text, let password = passwordText.text {
            //Checkeamos si son validos por un validator...
            Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
                if let result = result, error == nil {
                    //Llamamos al router para mandarnos a la pantalla de listado
                    let storyBoard : UIStoryboard = UIStoryboard(name: "ListPlantsView", bundle:nil)
                    let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ListPlantsID") as! ListPlantsViewModel
                    self.navigationController?.setNavigationBarHidden(true, animated: true)

                    self.show(nextViewController, sender: self)
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
    
    @IBAction func RegisterButton(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "RegisterView", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "RegisterViewID") as! RegisterViewModel
        self.navigationController?.pushViewController(nextViewController, animated: true)
        
    }
    
    
}
