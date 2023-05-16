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
    
    @IBOutlet var imageView: UIImageView! {
        didSet {
            imageView.layer.cornerRadius = imageView.frame.height / 2
        }
    }
    

    var user: User!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.user = user
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer()
        
        firstNameLabel.text = user.person.firstName
        lastNameLabel.text = user.person.lastName
        companyLabel.text = user.person.company
        jobTitleLabel.text = user.person.jobTitle
        
        imageView.image = UIImage(named: user.person.image)
        
        navigationController?.topViewController?.title = user.person.fullName
    }

}
