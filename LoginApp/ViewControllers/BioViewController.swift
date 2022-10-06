//
//  InstagramViewController.swift
//  LoginApp
//
//  Created by Айтолкун Анарбекова on 5/10/22.
//

import UIKit

class BioViewController: UIViewController {
    @IBOutlet var bioLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bioLabel.text = person.getUserInfo().moreInfo
        
        
    }
    


}
