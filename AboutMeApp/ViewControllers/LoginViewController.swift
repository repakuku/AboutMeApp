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
    
    let user = User.getUser()
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard user.username == usernameTextField.text, user.password == passwordTextField.text else {
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
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let homeVC = tabBarController.viewControllers?.first as? HomeViewController else { return }
        homeVC.username = user.username
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func anyForgotButtonTapped(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your username is \(user.username)!😉")
        : showAlert(title: "Oops!", message: "Your password is \(user.password)!😉")
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
