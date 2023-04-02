//
//  WelcomeViewController.swift
//  LoginAppPB
//
//  Created by Admin on 01/04/2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLable: UILabel!
    
    @IBOutlet weak var logoutButton: UIButton!
    
    var welcomeText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLable.text = welcomeText
        navigationItem.hidesBackButton = true
        welcomeLable.text = "Welcome, \(String(welcomeText))!"
        
    }
    
    @IBAction func logoutButtonTap() {
    }
    
}


