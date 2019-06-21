//
//  AboutViewController.swift
//  LearningCoordinators
//
//  Created by Brian Sipple on 6/19/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController, Storyboarded {
    weak var delegate: AboutViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func detail1ButtonTapped(_ sender: UIButton) {
        delegate?.viewController(self, didSelect: 1)
    }
    
    @IBAction func detail2ButtonTapped(_ sender: UIButton) {
        delegate?.viewController(self, didSelect: 2)
    }
    
    
}
