//
//  ViewController.swift
//  GameBoardSearcher
//
//  Created by Danny Espinoza Sanchez on 9/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var rememberMeSwitch: UISwitch!
    
    private let storage = UserDefaults.standard
    private let emailKey = "emailKey"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let savedUser = storage.string(forKey: emailKey){
            emailTextField.text = savedUser
            rememberMeSwitch.isOn =  true
        }else{
            rememberMeSwitch.isOn = false
        }
    }
    
    @IBAction func loginButtonAction(_ sender: UIButton) {
    
        let email = emailTextField.text
        let pass = passwordTextField.text
        
        if email == "danny@fiserv.com" && pass == "123"{
            if rememberMeSwitch.isOn {
                storage.set(email, forKey: emailKey)
            }
            performSegue(withIdentifier: "home_segue", sender: nil)
        }
    }
    
}

