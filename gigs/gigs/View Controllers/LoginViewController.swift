//
//  LoginViewController.swift
//  gigs
//
//  Created by patelpra on 3/17/20.
//  Copyright © 2020 Crus Technologies. All rights reserved.
//

import UIKit

enum LoginType {
    case signUp
    case signIn
}

class LoginViewController: UIViewController {
    
    @IBOutlet weak var signUpLoginSegmented: UISegmentedControl!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpLogInButton: UIButton!
    
    var gigController: GigController?
    var loginType = LoginType.signUp
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func signUpLoginTapped(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            loginType = .signUp
            signUpLogInButton.setTitle("Sign Up", for: .normal)
        } else {
            loginType = .signIn
            signUpLogInButton.setTitle("Sign In", for: .normal)
        }
    }
    
    
    @IBAction func signUpLoginButtonTapped(_ sender: UIButton) {
        guard let gigController = gigController else { return }
        
        guard let username = userNameTextField.text,
            username.isEmpty == false,
            let password = passwordTextField.text,
            password.isEmpty == false else { return }
        
        let user = User(username: username, password: password)
        
        switch loginType {
        case .signUp:
            gigController.signUp(with: user) { (error) in
                guard error == nil else {
                    print("Error signing up: \(error)")
                    return
                }
                
                DispatchQueue.main.async {
                    let alertController = UIAlertController(title: "Sign Up Successful", message: "Now please login", preferredStyle: .alert)
                    let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                    alertController.addAction(alertAction)
                    
                    self.present(alertController, animated: true) {
                        self.loginType = .signIn
                        
                        self.signUpLoginSegmented
                            .selectedSegmentIndex = 1
                        self.signUpLogInButton.setTitle("Sign In", for: .normal)
                    }
                }
                
            }
        case .signIn:
            gigController.signIn(with: user) { (error) in
                guard error == nil else {
                    print("Error loggin in \(error!)")
                    return
                }
                
                DispatchQueue.main.async {
                    self.dismiss(animated: true, completion: nil)
                }
            }
        }
    }
}
