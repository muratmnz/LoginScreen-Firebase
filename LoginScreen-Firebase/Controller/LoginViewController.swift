//
//  ViewController.swift
//  LoginScreen-Firebase
//
//  Created by Murat Minaz on 2.08.2023.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseCore

class ViewController: UIViewController {

    @IBOutlet weak var loginText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    //login with email & password. Segue to home page.
    @IBAction func pressLogin(_ sender: UIButton) {
        
        if let email = loginText.text, let password = passwordText.text {
            Auth.auth().signIn(withEmail: email, password: password){
                authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                }else{
                    self.performSegue(withIdentifier: C.loginSegue, sender: self)
                }
            }
        }
        
    }
    
}

