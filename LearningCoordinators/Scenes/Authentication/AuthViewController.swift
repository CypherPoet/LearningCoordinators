//
//  CreateAccountViewController.swift
//  LearningCoordinators
//
//  Created by Brian Sipple on 6/18/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController, Storyboarded {
    weak var delegate: AuthViewControllerDelegate?
    
    static var storyboardName: String { "Auth" }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func signInButtonTapped(_ sender: UIButton) {
        delegate?.viewControllerDidSignIn(self)
    }
    
}


