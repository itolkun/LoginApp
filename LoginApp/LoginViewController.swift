//
//  ViewController.swift
//  LoginApp
//
//  Created by Айтолкун Анарбекова on 30/9/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var textFieldUserName: UITextField!
    @IBOutlet var textFieldPassword: UITextField!

    @IBAction func logInButtonPressed() {
        if textFieldUserName.text == "User", textFieldPassword.text == "Password" {
            print("true")
        } else {
            showAlert(withTitle: "Invalid login or password", andMessage: "Please, enter correct login and password")
            textFieldPassword.text = ""
        }
    }
    
    @IBAction func forgotUserNamePressed() {
        showAlert(withTitle: "OOPS!", andMessage: "Your name is User \u{1F609}")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(withTitle: "OOPS!", andMessage: "Your password is Password \u{1F609}")
    }
    
    func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }

}
