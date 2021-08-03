//
//  ViewController.swift
//  View
//
//  Created by Apple on 26/07/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tileLabel: UILabel!
    @IBOutlet var tileLabels: [UILabel]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let frame = CGRect(x: 150, y: 100, width: 100, height: 100)
                let userAvatar = UIImageView(image: UIImage(named: "no_image"))
                userAvatar.frame = frame
                userAvatar.contentMode = .scaleToFill
                view.addSubview(userAvatar)
        
        let userName = UILabel(frame: CGRect(x: 150, y: 200, width: 100, height: 25))
                userName.text = "Image1"
                userName.backgroundColor = .lightGray
                userName.textAlignment = .center
                userName.textColor = .blue
                view.addSubview(userName)
        
        let button = UIButton(frame: CGRect(x: 150, y: 100, width: 100, height: 225))
                button.backgroundColor = .clear
                button.addTarget(self, action: #selector(tap), for: .touchDragInside)
                view.addSubview(button)
        
        tileLabel.text = "Hello"
        
        for index in 0...4 {
            tileLabels[index].text = "Title Label \(index)"
        }
        
    }
    @objc func tap() {
            print("tap tap tap 12")
        }
    @IBAction func tapMe(_ sender: Any) {
        print("Kimochiiiiiiiiii !!!!")
    }
}

