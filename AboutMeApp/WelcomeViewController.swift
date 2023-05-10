//
//  WelcomeScreenViewController.swift
//  AboutMeApp
//
//  Created by Алексей Турулин on 5/10/23.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var username = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(username)!"
    }
}
