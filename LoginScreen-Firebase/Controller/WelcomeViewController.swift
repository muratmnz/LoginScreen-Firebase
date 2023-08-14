//
//  WelcomeViewController.swift
//  LoginScreen-Firebase
//
//  Created by Murat Minaz on 14.08.2023.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = C.appName
    }
    

}
