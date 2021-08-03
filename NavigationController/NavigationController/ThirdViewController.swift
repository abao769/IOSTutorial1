//
//  ThirdViewController.swift
//  NavigationController
//
//  Created by Apple on 30/07/2021.
//

import UIKit

class ThirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Third view"
    }
    
    @IBAction func popController(_ sender: Any) {
            let vc = (self.navigationController?.viewControllers[1])!
            self.navigationController?.popToViewController(vc, animated: true)
            
        }
}
