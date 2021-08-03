//
//  FxLineView.swift
//  Drawing
//
//  Created by Apple on 27/07/2021.
//

import UIKit

class FxLineView: UIView {

    override init(frame: CGRect) {
            super.init(frame: frame)
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            fatalError("init(coder:) has not been implemented")
        }
    
        func drawLine(start: CGPoint, end: CGPoint) {
            
            let path = UIBezierPath()
            path.move(to: start)
            path.addLine(to: end)
            path.close()
            
            
            let shapeLayer = CAShapeLayer()
            shapeLayer.strokeColor = UIColor.red.cgColor
            shapeLayer.lineWidth = 1.0
            shapeLayer.path = path.cgPath
            
            
            self.layer.addSublayer(shapeLayer)
        }
        
}
