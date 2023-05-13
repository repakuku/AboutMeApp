//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Алексей Турулин on 5/11/23.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet var bioTextView: UITextView!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        bioTextView.text = person.bio
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let photoVC = segue.destination as? PhotoViewController else { return }
        photoVC.firstImage = UIImage(named: person.firstHobbyImage)
        photoVC.secondImage = UIImage(named: person.secondHobbyImage)
    }
}
