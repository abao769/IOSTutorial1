//
//  UserView.swift
//  CustomView
//
//  Created by Apple on 27/07/2021.
//

import UIKit

class UserView: UIView {
    
    var count = 0
    var delegate: UserViewDelegate?
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel1: UILabel!
    
    @IBAction func tap(_ sender: Any) {
        count += 1
        nameLabel1.text = "\(count)"
        if let delegate = delegate {
            delegate.didTap(view: self, count: count)
        }
    }
}
protocol UserViewDelegate {
    func didTap(view: UserView, count: Int)
}
