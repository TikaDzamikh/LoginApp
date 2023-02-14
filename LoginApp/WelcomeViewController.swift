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
        welcomeLabel.text = "Welcome, \(userName ?? "")!"
        gradientColor()
    }
    
    @IBAction func logOutButtonTapped() {
        dismiss(animated: true)
    }
    
    private func gradientColor () {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemIndigo.cgColor,
        ]
        gradient.locations = [0, 1]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        view.layer.insertSublayer(gradient, at: 0)
    }
}
