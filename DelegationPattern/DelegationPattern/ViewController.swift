//
//  ViewController.swift
//  DelegationPattern
//
//  Created by Apple on 29/07/2021.
//

import UIKit

class ViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let userView = Bundle.main.loadNibNamed("UserView", owner: self, options: nil)?.first as? UserView
        userView?.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
        userView?.index = 10
        userView?.delegate = self
        userView?.dataSource = self
        view.addSubview(userView!)
        
    }
}

extension ViewController: UserViewDelegate {
    func userView(userView: UserView, didSelectedWith index: Int) {
        print("Did select UserView with index \(index)")
    }
}

extension ViewController: UserViewDataSource {
    func userView(nameOf userView: UserView) -> String {
        return "Fx Studio"
    }
    
    func userView(indexOf userView: UserView) -> Int {
        return 999
    }
}

