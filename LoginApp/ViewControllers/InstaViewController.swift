//
//  HobbyViewController.swift
//  LoginApp
//
//  Created by Айтолкун Анарбекова on 5/10/22.
//

import UIKit

class InstaViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    
    
    let images: [UIImage] = [
        UIImage(named: "dog.jpeg")!,
        UIImage(named: "paint.jpeg")!,
        UIImage(named: "undersea.jpeg")!,
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.layer.cornerRadius = 40
        
    }
    
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        imageView.image = images[0]
    }
    
}
