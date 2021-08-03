//
//  FxTrianglesView.swift
//  Drawing
//
//  Created by Apple on 28/07/2021.
//

import UIKit

class FxTrianglesView: UIView {
    
    override func draw(_ rect: CGRect) {
        // create path
        let path = createTriangle()
        
        // fill
        let fillColor = UIColor.red
        fillColor.setFill()
        path.fill()
    }
    
    func createTriangle() -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: self.frame.width/2, y: 0.0))
        path.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
        path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        path.close()
        
        return path
    }
    
}
