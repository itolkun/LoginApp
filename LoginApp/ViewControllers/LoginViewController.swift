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
    
    private let userr = user.getUser().logIn
    private let password = user.getUser().password
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldUserName.text = userr
        textFieldPassword.text = password
    }
    
    // MARK: - overrided functions for prepare and touchesBegan
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        
        viewControllers.forEach { viewController in
           if let navigationVC = viewController as? UINavigationController {
                guard let userVC = navigationVC.topViewController as? UserViewController else { return }
                userVC.view.backgroundColor = .systemPurple
            } else if let hobbyVC = viewController as? HobbyViewController {
                hobbyVC.view.backgroundColor = .systemPurple
            }
        
        }
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    // MARK: - Action Buttons
    
    
    
    @IBAction func logInButtonPressed() {
        guard textFieldUserName.text == userr, textFieldPassword.text == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password",
                textField: textFieldPassword
            )
            return
        }
       performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops!", andMessage: "Your name is \(userr) \u{1F609}")
        : showAlert(withTitle: "Oops!", andMessage: "Your password is \(password) \u{1F609}")
    }
    
    
    
    
    // MARK: - Unwind Segue
    
    @IBAction func unwind(seque: UIStoryboardSegue) {
        textFieldUserName.text = userr
        textFieldPassword.text = password
    }
    
    // MARK: - Alert function
    
    private func showAlert(withTitle title: String, andMessage message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text? = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }

}
