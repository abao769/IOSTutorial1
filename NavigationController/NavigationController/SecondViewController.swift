//
//  SecondViewController.swift
//  NavigationController
//
//  Created by Apple on 30/07/2021.
//

import UIKit

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second View"
        let backButton = UIBarButtonItem(title: "Back", style: .plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backButton
        
        let searchItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(tap))
        
        let bookMarkItem = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(tap))
                
        let settingItem = UIBarButtonItem(image: UIImage(named: "setting-icon"), style: .plain, target: self, action: #selector(tap))
                
        navigationItem.rightBarButtonItems = [searchItem, bookMarkItem, settingItem]
    }
    @objc func tap() {
            print("taptap")
        }
    
    @IBAction func pop(_ sender: Any) {
            self.navigationController?.popViewController(animated: true)
        }
    @IBAction func push(_ sender: Any) {
            let vc = ThirdViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
}
