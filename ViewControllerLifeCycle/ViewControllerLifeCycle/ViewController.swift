//
//  ViewController.swift
//  ViewControllerLifeCycle
//
//  Created by Apple on 30/07/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("🔴 viewDidLoad")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("🔴 viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("🔴 viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("🔴 viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("🔴 viewDidDisappear")
    }
}

