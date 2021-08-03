//
//  MyView.swift
//  CustomView
//
//  Created by Apple on 27/07/2021.
//

import UIKit

class MyView: UIView {
    
    var avatarImageView: UIImageView?
    var nameLabel: UILabel?
    var markButton: UIButton?
    var nameLabel2: UILabel?
    var count = 0
    
    
    override init(frame:CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemYellow
        
        avatarImageView = UIImageView(image: UIImage(named: "avatar"))
        avatarImageView!.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height*4/5)
        avatarImageView!.contentMode = .scaleAspectFit
        self.addSubview(avatarImageView!)
        
        nameLabel = UILabel(frame: CGRect(x: 0, y: frame.size.height*4/5, width: frame.size.width, height: frame.size.height/5))
        nameLabel!.text = "Avatar"
        nameLabel!.backgroundColor = .lightGray
        nameLabel!.textAlignment = .center
        nameLabel!.textColor = .red
        self.addSubview(nameLabel!)
        
        nameLabel2 = UILabel(frame: CGRect(x: 0, y: frame.size.height, width: frame.size.width, height: frame.size.height/5))
        nameLabel2!.text = ""
        nameLabel2!.backgroundColor = .black
        nameLabel2!.textAlignment = .center
        nameLabel2!.textColor = .white
        self.addSubview(nameLabel2!)
        
        markButton = UIButton(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height))
        markButton!.backgroundColor = .clear
        markButton?.addTarget(self, action: #selector(tap), for: .touchUpInside)
        self.addSubview(markButton!)
        
        
    }
    @objc func tap() {
        count += 1
        nameLabel2?.text = "\(count)"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
