//
//  WelcomeScreenViewController.swift
//  AboutMeApp
//
//  Created by Алексей Турулин on 5/10/23.
//

import UIKit

final class HomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var username = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        welcomeLabel.text = "Welcome, \(username)!"
    }
}
