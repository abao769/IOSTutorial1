//
//  FristViewController.swift
//  NavigationController
//
//  Created by Apple on 30/07/2021.
//

import UIKit
class FristViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Frist View"
        let leftButton1 = UIBarButtonItem(title: "Left 1", style: .plain, target: self, action: #selector(leftAction))
        let leftButton2 = UIBarButtonItem(title: "Left 2", style: .plain, target: self, action: #selector(leftAction))
                
        navigationItem.leftBarButtonItems = [leftButton1, leftButton2]
        
    }
    @objc func leftAction() {
            print("taped")
        }
    override func viewWillDisappear(_ animated: Bool) {
            print("view Will Disappear")
        }
        
    override func viewDidDisappear(_ animated: Bool) {
            print("view Did Disappear")
        }
    @IBAction func push(_ sender: Any) {
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
        
    }
}
