//
//  UserViewController.swift
//  LoginApp
//
//  Created by Айтолкун Анарбекова on 5/10/22.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var professionLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.cornerRadius = imageView.frame.width / 2
        
        nameLabel.text = person.getUserInfo().name
        surnameLabel.text = person.getUserInfo().surname
        ageLabel.text = person.getUserInfo().age.formatted()
        countryLabel.text = person.getUserInfo().country
        cityLabel.text = person.getUserInfo().city
        professionLabel.text = person.getUserInfo().prof
        
        
    }
    
}
