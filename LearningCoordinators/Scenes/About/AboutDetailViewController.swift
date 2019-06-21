//
//  AboutDetailViewController.swift
//  LearningCoordinators
//
//  Created by Brian Sipple on 6/20/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import UIKit

class AboutDetailViewController: UIViewController, Storyboarded {
    @IBOutlet var descriptionLabel: UILabel!
    
    var aboutDescription: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        descriptionLabel.text = aboutDescription ?? "No description provided"
    }
}
