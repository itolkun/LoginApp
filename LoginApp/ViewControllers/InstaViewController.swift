//
//  HobbyViewController.swift
//  LoginApp
//
//  Created by Айтолкун Анарбекова on 5/10/22.
//

import UIKit

class InstaViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imagesListArray = [UIImage]()

        for _ in 1...4
        {
            imagesListArray.append(UIImage(named: "nature.jpeg")!)
            imagesListArray.append(UIImage(named: "dog.jpeg")!)
            imagesListArray.append(UIImage(named: "paint.jpeg")!)
            imagesListArray.append(UIImage(named: "undersea.jpeg")!)
        }

        self.imageView.animationImages = imagesListArray
        self.imageView.animationDuration = 10.0
        self.imageView.startAnimating()
        
        imageView.layer.cornerRadius = 40
        
    }
    
    
}
