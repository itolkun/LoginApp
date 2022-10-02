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
    
    func setGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemBlue.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setGradientBackground()
        super.viewWillAppear(animated)
    }


}
