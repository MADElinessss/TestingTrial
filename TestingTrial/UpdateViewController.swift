//
//  UpdateViewController.swift
//  TestingTrial
//
//  Created by Madeline on 5/17/24.
//

import UIKit

struct User {
    let email: String
    let password: String
    let check: String
}

struct Validator {
    func isValidEmail(email: String) -> Bool {
        
        return email.contains("@") && email.count >= 6
    }
    
    func isValidPassword(password: String) -> Bool {
        
        return password.count >= 6 && password.count < 10
    }
    
    func isEqualPassword(password: String, check: String) -> Bool {
        
        return password == check
    }
}

class UpdateViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    
    let validator = Validator()
    var user = User(email: "", password: "", check: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func signButtonClicked(_ sender: UIButton) {
        
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        guard let check = checkTextField.text else { return }
        
        user = User(email: email, password: password, check: check)
        
        if validator.isValidEmail(email: user.email) &&
            validator.isValidPassword(password: user.password) &&
            validator.isEqualPassword(password: user.password, check: user.check) {
            print("success")
        } else {
            print("fail")
        }
    }
    

}
