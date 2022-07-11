//
//  ControllerCViewController.swift
//  3_navigation
//
//  Created by David Granado Jordan on 6/2/22.
//

import UIKit

class ControllerCViewController: UIViewController {

    var data: String?
    
    @IBOutlet weak var infoLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Controller C"
        if let value = data {
            infoLabel.text = value
        }
        // Do any additional setup after loading the view.
    }


}
