//
//  HobbyViewController.swift
//  LoginApp
//
//  Created by Айтолкун Анарбекова on 5/10/22.
//

import UIKit

class InstaViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    
    
    let images = ["dog.jpeg", "paint.jpeg", "undersea.jpeg"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.layer.cornerRadius = 40
        
    }
    
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        
    }
    
}
