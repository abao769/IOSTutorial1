//
//  OvalsAndCircles.swift
//  Drawing
//
//  Created by Apple on 29/07/2021.
//

import UIKit

class OvalsAndCircles: UIView {

   
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let path = UIBezierPath(ovalIn: self.bounds)
        
        // fill
        let fillColor = UIColor.red
        fillColor.setFill()
        path.fill()
        
    }
}
