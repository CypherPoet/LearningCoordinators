//
//  AuthCoordinator.swift
//  LearningCoordinators
//
//  Created by Brian Sipple on 6/19/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import UIKit

final class AuthCoordinator: NavigationCoordinator {
    var navController: UINavigationController
    weak var delegate: AuthCoordinatorDelegate?
    
    
    init(navController: UINavigationController) {
        self.navController = navController
    }

    
    func start() {
        // Initialize the view controller and provide it with any dependencies that it might need
        let authViewController = AuthViewController.instantiateFromStoryboard()
        
        authViewController.delegate = self
        navController.setViewControllers([authViewController], animated: true)
    }
}

// MARK: - AuthViewControllerDelegate
extension AuthCoordinator: AuthViewControllerDelegate {
    
    func viewControllerDidSignIn(_ controller: UIViewController) {
        delegate?.coordinatorDidAuthenticate(self)
    }
}
