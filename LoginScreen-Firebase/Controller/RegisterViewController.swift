//
//  RegisterViewController.swift
//  LoginScreen-Firebase
//
//  Created by Murat Minaz on 14.08.2023.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseCore

class RegisterViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func pressRegister(_ sender: Any) {
        
        if let email = usernameTextField.text, let password = passTextField.text {
            Auth.auth().createUser(withEmail: email, password: password){
                authResult, error in
                if let e = error {
                    //error
                    print(e.localizedDescription)
                }else{
                    //navigation to homeViewController after register
                    self.performSegue(withIdentifier: C.registerSegue, sender: self)
                }
            }
        }
    }
    
    
}
