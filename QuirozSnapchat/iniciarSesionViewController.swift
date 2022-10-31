//
//  ViewController.swift
//  QuirozSnapchat
//
//  Created by Mac 12 on 31/10/22.
//

import UIKit
import FirebaseCore
import FirebaseAuth


class iniciarSesionViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        
       print("correo: " + emailTextField.text!)
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            print("Intentando Iniciar Sesion")
            if error != nil{
                print("Se presento el siguiente error: \(error)")
            }else{
                print("Inicio de sesion exitoso")
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

