//
//  ViewController.swift
//  Drawing
//
//  Created by Apple on 27/07/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        drawLine(start: CGPoint(x: 20, y: 50), end: CGPoint(x: 20, y: 700  ))
        
        let lineView = FxLineView(frame: view.bounds)
        lineView.drawLine(start: CGPoint(x: 40, y: 100), end: CGPoint(x: 50, y: 600))
        view.addSubview(lineView)
        
        let rectView = FxRectangularView(frame: CGRect(x: 60, y: 50, width: 200, height: 100))
        view.addSubview(rectView)
        
        let triangles = FxTrianglesView(frame: CGRect(x: 60, y: 150, width: 100, height: 100))
        triangles.backgroundColor = .white
        view.addSubview(triangles)
        
        let ovales = OvalsAndCircles(frame: CGRect(x: 60, y: 250, width: 100, height: 100))
        ovales.backgroundColor = .white
        view.addSubview(ovales)
        
        }
    
    func drawLine(start:CGPoint, end:CGPoint){
        let path = UIBezierPath()
        path.move(to: start)
        path.addLine(to: end)
        path.close()
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = UIColor.blue.cgColor
        shapeLayer.lineWidth = 2
        shapeLayer.path = path.cgPath
        
        self.view.layer.addSublayer(shapeLayer)
        
    }
    
}

