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
    
    enum State {
        case forgotPassword
        case forgotUsername
        case wrongUsernameOrPassword
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 10
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard username == usernameTextField.text, password == passwordTextField.text else {
            
            showAlert(for: .wrongUsernameOrPassword)
            
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
            showAlert(for: .forgotUsername)
        } else {
            showAlert(for: .forgotPassword)
        }
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(for state: State) {
        
        var title = ""
        var message = ""
        
        var okAction = UIAlertAction(title: "OK", style: .default)
        
        switch state {
        case .forgotUsername:
            title = "Oops!"
            message = "Your name is \(username)😉"
        case .forgotPassword:
            title = "Oops!"
            message = "Your password is \(password)😉"
        case .wrongUsernameOrPassword:
            title = "Invalid login or password"
            message = "Please, enter correct login and password"
            okAction = UIAlertAction(title: "OK", style: .default) { _ in
                self.passwordTextField.text = ""
            }
        }
        
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        alertController.addAction(okAction)
        self.present(alertController, animated: true)
    }
}
