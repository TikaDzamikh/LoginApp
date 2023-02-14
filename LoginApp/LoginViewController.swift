//
//  ViewController.swift
//  LoginApp
//
//  Created by Timur Dzamikh on 14.02.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    // MARK: - IBActions
    @IBAction func logInButtonTapped() {
        guard userNameTF.text == "One", passwordTF.text == "1" else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return
        }
    }
        
    @IBAction func forgotUNButtonTapped() {
        showAlert(withTitle: "Ooops!", andMessage: "Your name is One")
    }
    
    @IBAction func forgotPassButtonTapped() {
        showAlert(withTitle: "Ooops!", andMessage: "Your password is 1")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTF.text = nil
        passwordTF.text = nil
    }
}

// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert (withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
