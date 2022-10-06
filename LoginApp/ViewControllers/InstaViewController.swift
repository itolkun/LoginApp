//
//  HobbyViewController.swift
//  LoginApp
//
//  Created by Айтолкун Анарбекова on 5/10/22.
//

import UIKit

class InstaViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    let images: [UIImage] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.backgroundColor = .white
        imageView.layer.cornerRadius = 40
        
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
    }
    
}
