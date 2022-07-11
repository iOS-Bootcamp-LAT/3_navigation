//
//  ViewController.swift
//  3_navigation
//
//  Created by David Granado Jordan on 6/2/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    
    
    @IBAction func goToB(_ sender: Any) {
        performSegue(withIdentifier: "SegueControllerB", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueControllerB" {
            guard let destinationVC = segue.destination as? ControllerBViewController else { return }
            destinationVC.data = "Home View Controller"
        }
        
    }
    
    
    @IBAction func goToBNewWay(_ sender: Any) {
        guard let controllerB = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ControllerBViewController") as? ControllerBViewController else { return }
        
        controllerB.data = "2 home view c"
        
        show(controllerB, sender: nil)
  
    }
    
    
    
    
    @IBAction func goToControllerC(_ sender: Any) {
        
        let controllerC = ControllerCViewController()
        controllerC.data = "3 Home VC"
        show(controllerC, sender: nil)
        // present(controllerC, animated: true, completion: nil)
        
    }
    
    
    
}

