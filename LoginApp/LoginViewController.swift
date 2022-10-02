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
    
    // MARK: - overrided functions for prepare and touchesBegan
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userNameText = textFieldUserName.text }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    // MARK: - Action Buttons
    
    @IBAction func logInButtonPressed() {
        if textFieldUserName.text == "User", textFieldPassword.text == "Password" {
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
    
    // MARK: - Unwind Segue
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        guard let _ = unwindSegue.source as? WelcomeViewController else { return }
        textFieldUserName.text = ""
        textFieldPassword.text = ""
    }
    
    // MARK: - Alert function
    
    func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }

}
