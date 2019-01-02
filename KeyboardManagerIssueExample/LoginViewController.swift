//
//  ViewController.swift
//  KeyboardManagerIssueExample
//
//  Created by Linar Chabibulin on 30/10/2017.
//  Copyright © 2017 Whatever. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet public weak var countryCodeTextfield: UITextField!
    @IBOutlet public weak var mobileNumberTextfield: UITextField!
    @IBOutlet public weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Demo"
    }
}

