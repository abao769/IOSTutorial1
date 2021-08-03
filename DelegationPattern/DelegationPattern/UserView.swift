//
//  UserView.swift
//  DelegationPattern
//
//  Created by Apple on 29/07/2021.
//

import UIKit

class UserView: UIView {

    var delegate: UserViewDelegate?
    var index: Int = 0
    weak var dataSource: UserViewDataSource?
    
    @IBOutlet weak var avatarImagerView: UIImageView!
    @IBOutlet weak var nameLabel1: UILabel!
    
    @IBAction func tap(_ sender: Any) {
        if let delegate = delegate {
            delegate.userView(userView: self, didSelectedWith: index)
        }
    }
    
    func configView() {
            if let dataSource = dataSource {
                //set index
                index = dataSource.userView(indexOf: self)
                
                //set name
                nameLabel1.text = dataSource.userView(nameOf: self)
            }
        }
}
protocol UserViewDelegate: AnyObject {
    func userView(userView: UserView, didSelectedWith index: Int)
}
protocol UserViewDataSource: AnyObject {
    func userView(nameOf userView: UserView) -> String
    func userView(indexOf userView: UserView) -> Int
}
