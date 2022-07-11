//
//  ControllerBViewController.swift
//  3_navigation
//
//  Created by David Granado Jordan on 6/2/22.
//

import UIKit

class ControllerBViewController: UIViewController {

    
    var data: String?
    
    @IBOutlet weak var infoLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let value = data {
            infoLabel.text = value
        }

    }
    
}
