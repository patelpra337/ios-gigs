//
//  LoginViewController.swift
//  gigs
//
//  Created by patelpra on 3/17/20.
//  Copyright © 2020 Crus Technologies. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var signUpLoginSegmented: UISegmentedControl!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpLogInButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpLoginTapped(_ sender: UISegmentedControl) {
    }
    
    
    @IBAction func signUpLoginButtonTapped(_ sender: UIButton) {
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
