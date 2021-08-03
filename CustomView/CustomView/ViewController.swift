//
//  ViewController.swift
//  CustomView
//
//  Created by Apple on 27/07/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myView = MyView(frame: CGRect(x: 50, y: 100, width: 100, height: 125))
        view.addSubview(myView)
        
        let avatarNL = MyView(frame: CGRect(x: 50, y: 300, width: 100, height: 125))
        avatarNL.nameLabel?.text = "Avatar Netflix"
        avatarNL.avatarImageView?.image = UIImage(named: "avatarNetflix")
        view.addSubview(avatarNL)
        
        let luffy = MyView(frame: CGRect(x: 200, y: 100, width: 100, height: 125))
        luffy.nameLabel?.text = "Luffy"
        luffy.avatarImageView?.image = UIImage(named: "luffy")
        view.addSubview(luffy)
        
        let userView = Bundle.main.loadNibNamed("UserView", owner: self, options: nil)?.first as? UserView
        userView?.frame = CGRect(x: 50, y: 500, width: 50, height: 50)
        userView?.delegate = self
        view.addSubview(userView!)
        
    }
    
}
extension ViewController: UserViewDelegate {
    func didTap(view: UserView, count: Int) {
        print("Count: \(count)")
    }
}
