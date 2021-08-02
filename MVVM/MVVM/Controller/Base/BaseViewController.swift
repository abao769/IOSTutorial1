//
//  BaseViewController.swift
//  MVVM
//
//  Created by Apple on 01/08/2021.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        setupUI()
        // Do any additional setup after loading the view.
    }
    func setupData() {
    }
        
    func setupUI() {
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back",
                                                                style: .plain,
                                                                target: nil,
                                                                action: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
