//
//  LoginViewController.swift
//  MVVM
//
//  Created by Apple on 01/08/2021.
//

import UIKit

class LoginViewController: BaseViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login"
        // Do any additional setup after loading the view.
    }
    var viewModel = LoginViewModel()
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
            // MARK: - config
    override func setupUI() {
        super.setupUI()
        self.title = "Login"
        updateView()
    }
    
    func updateView() {
        emailTextField.text = viewModel.email
        passwordTextField.text = viewModel.password
    }
    
    
    // MARK: - Actions
    
    @IBAction func loginButtonTouchUpInside(_ sender: Any) {
    let email = emailTextField.text ?? ""
    let password = passwordTextField.text ?? ""
    // tao gia tri cho closure
        let complete: LoginViewModel.Completion = { (result) in
        switch result {
        case .success:
            //làm cái gi đó
            print("ĐĂNG NHẬP THÀNH CÔNG")
            self.updateView()
            return SceneDelegate().changeScreen(type: .tabbar)
        case .failure(let isError, let errorMsg):
            if isError {
                print("ĐĂNG NHẬP THẤT BẠI")
                print(errorMsg)
            }
        }
    }
    
    // goi ham
    viewModel.login(email: email, password: password, completion: complete)
        
    }
    
    override func setupData() {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
