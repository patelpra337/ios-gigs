//
//  GigsTableViewController.swift
//  gigs
//
//  Created by patelpra on 3/17/20.
//  Copyright © 2020 Crus Technologies. All rights reserved.
//

import UIKit

class GigsTableViewController: UITableViewController {
    
    private let gigController = GigController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        
    override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            
            if gigController.bearer == nil {
                performSegue(withIdentifier: "LoginViewModalSegue", sender: self)
            }
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

         

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LoginViewModalSegue",
            let loginVC = segue.destination as? LoginViewController {
            loginVC.gigController = gigController
        }

    }
}
