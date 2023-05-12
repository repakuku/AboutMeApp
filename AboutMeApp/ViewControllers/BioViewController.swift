//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Алексей Турулин on 5/11/23.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet var bioLabel: UILabel!
    
    var bio = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        
        bioLabel.text = bio
    }

}
