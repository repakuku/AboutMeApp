//
//  PersonViewController.swift
//  AboutMeApp
//
//  Created by Алексей Турулин on 5/11/23.
//

import UIKit

final class PersonViewController: UIViewController {
    
    @IBOutlet var firstNameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var jobTitleLabel: UILabel!
    
    var person: Person!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        
        firstNameLabel.text = person.firstName
        lastNameLabel.text = person.lastName
        companyLabel.text = person.company
        jobTitleLabel.text = person.jobTitle
    }

}
