//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Айтолкун Анарбекова on 2/10/22.
//

import UIKit


final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var hiLabel: UILabel!
    
    var userNameText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(userNameText ?? "")!"
        hiLabel.text = "\u{1F44B}"

    }

    @IBAction func logOut(_ sender: Any) {
        dismiss(animated: true)
    }

}
