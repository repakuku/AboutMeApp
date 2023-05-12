//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Алексей Турулин on 5/11/23.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet var bioTextView: UITextView!
    
    @IBOutlet var firstImageView: UIImageView!
    @IBOutlet var secondImageView: UIImageView!
    
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        
        bioTextView.text = person.bio
        
        firstImageView.image = UIImage(named: person.firstHobbyImage)
        secondImageView.image = UIImage(named: person.secondHobbyImage)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        firstImageView.layer.cornerRadius = firstImageView.frame.height / 10
        secondImageView.layer.cornerRadius = firstImageView.layer.cornerRadius
    }

}
