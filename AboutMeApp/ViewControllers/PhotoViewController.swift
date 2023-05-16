//
//  PhotoViewController.swift
//  AboutMeApp
//
//  Created by Алексей Турулин on 5/12/23.
//

import UIKit

final class PhotoViewController: UIViewController {

    @IBOutlet var firstImageView: UIImageView!
    @IBOutlet var secondImageView: UIImageView!
    
    var firstImage: UIImage!
    var secondImage: UIImage!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        firstImageView.image = UIImage(named: user.person.firstHobbyImage)
        secondImageView.image = UIImage(named: user.person.secondHobbyImage)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        firstImageView.layer.cornerRadius = firstImageView.frame.height / 10
        secondImageView.layer.cornerRadius = firstImageView.layer.cornerRadius
    }

}
