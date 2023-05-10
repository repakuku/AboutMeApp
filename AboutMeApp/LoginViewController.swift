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
    
    @IBOutlet var logInButton: UIButton!
    
    private let username = "user"
    private let password = "code"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 10
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard username == usernameTextField.text, password == passwordTextField.text else {
            
            let alertController = UIAlertController(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                preferredStyle: .alert
                )
            let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                self.passwordTextField.text = ""
            }
            
            alertController.addAction(okAction)
            present(alertController, animated: true)
            
            return false
        }
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = usernameTextField.text ?? ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func anyForgotButtonTapped(_ sender: UIButton) {
        var message = ""
        
        if sender.titleLabel?.text == "Forgot User Name?" {
            message = "Your name is \(username)😉"
        } else {
            message = "Your password is \(password)😉"
        }
        
        let alertController = UIAlertController(
            title: "Oops!",
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alertController.addAction(okAction)
        self.present(alertController, animated: true)
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
}
