//
//  ViewController.swift
//  MVC1
//
//  Created by Apple on 30/07/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //outlet
    @IBOutlet weak var aTextField: UITextField!
    
    @IBOutlet weak var bTextField: UITextField!
    
    @IBOutlet weak var resultTextField: UITextField!
    
        
        //data
        var a : Float {
            get {
                return Float(aTextField.text!) ?? 0
            }
        }
        
        var b : Float {
            get {
                return Float(bTextField.text!) ?? 0
            }
        }
        
        var result: Float = 0 {
            didSet {
                resultTextField.text = "\(result)"
            }
        }
        
        //model
        var calculator = Calculator()
        
        
        //actions
    @IBAction func add(_ sender: Any) {
        result = calculator.add(a: self.a, b: self.b)
    }
    @IBAction func sub(_ sender: Any) {
        result = calculator.sub(a: self.a, b: self.b)
    }
    
    @IBAction func mul(_ sender: Any) {
        result = calculator.mul(a: self.a, b: self.b)
    }
    
    @IBAction func div(_ sender: Any) {
        result = calculator.div(a: self.a, b: self.b)
    }
    

}

