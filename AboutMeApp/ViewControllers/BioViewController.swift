//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Алексей Турулин on 5/11/23.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet var bioTextView: UITextView!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        bioTextView.text = user.person.bio
        
        navigationController?.topViewController?.title = user.person.fullName + " Bio"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let photoVC = segue.destination as? PhotoViewController else { return }
        photoVC.user = user
    }
}
