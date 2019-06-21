//
//  UserProfileViewController.swift
//  LearningCoordinators
//
//  Created by Brian Sipple on 6/18/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController, Storyboarded {
    weak var delegate: UserProfileViewControllerDelegate?


    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func signOutButtonTapped(_ sender: UIButton) {
        delegate?.viewControllerDidSignOut(self)
    }
    
}
