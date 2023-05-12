//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Алексей Турулин on 5/9/23.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let username = "user"
    private let password = "code"
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard username == usernameTextField.text, password == passwordTextField.text else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTextField
            )
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = username
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func anyForgotButtonTapped(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your username is \(username)!😉")
        : showAlert(title: "Oops!", message: "Your password is \(password)!😉")
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true)
    }
}
