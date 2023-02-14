//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Timur Dzamikh on 14.02.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userName ?? "")"
    }
    
    @IBAction func logOutButtonTapped() {
        dismiss(animated: true)
    }
    
}
