//
//  ViewController.swift
//  Testing
//
//  Created by Madeline on 4/29/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signButtonClicked(_ sender: UIButton) {
        // 가입 조건
        // 1. 이메일 @, 6,
        // 2. 비번 6~10,
        // 3. equal
        // test -> 하나의 기능만 담당하게 해야됨
        
        if isValidEmail() && isValidPassword() && isEqualPassword() {
            print("success")
        } else {
            print("fail")
        }
    }
    
    func isValidEmail() -> Bool {
        guard let email = emailTextField.text else { return  false }
        return email.contains("@") && email.count >= 6
    }
    
    func isValidPassword() -> Bool {
        guard let password = passwordTextField.text else { return false }
        return password.count >= 6 && password.count < 10
    }
    
    func isEqualPassword() -> Bool {
        guard let password = passwordTextField.text,
              let check = checkTextField.text else { return false }
        return password == check
    }
}

