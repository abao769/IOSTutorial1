//
//  ViewController.swift
//  TouchEvent
//
//  Created by Apple on 26/07/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var ball: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
                let location = touch.location(in: view)
            ball.frame.origin.x = location.x - (ball.frame.size.width/2)
            ball.frame.origin.y = location.y - (ball.frame.size.height/2)
        }
    }
    //Lay toa do diem cham
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let currentPoint = touch.location(in: view)
            print("View point(\(currentPoint.x), \(currentPoint.y))")
            
            let currentPointOfRedView = touch.location(in: redView)
            print("RedView point \(currentPointOfRedView.x), \(currentPointOfRedView.y)" )
      
            if touch.view == redView {
                print("Inside redView")
            } else if touch.view == blueView {
                print("Inside blueView")
            } else {
                print("Outside redView")
            }
        }
    }

}

