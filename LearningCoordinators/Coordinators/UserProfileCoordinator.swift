//
//  UserProfileCoordinator.swift
//  LearningCoordinators
//
//  Created by Brian Sipple on 6/18/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import UIKit


final class UserProfileCoordinator: NavigationCoordinator {
    var navController: UINavigationController
    weak var delegate: UserProfileCoordinatorDelegate?
    

    init(navController: UINavigationController = UINavigationController()) {
        self.navController = navController
        
        // Initialize the view controller and provide it with any dependencies that it might need
        let userProfileViewController = UserProfileViewController.instantiateFromStoryboard()
        
        userProfileViewController.title = "Profile"
        navController.setViewControllers([userProfileViewController], animated: true)
        
        userProfileViewController.delegate = self
    }
    
    // ❓ Given the unique nature of how this coordinator is created when we set up the
    // main tab bar coordinator, it seems like `init` needs to be a replacement for `start`.
    func start() {}
}


extension UserProfileCoordinator: UserProfileViewControllerDelegate {
    
    func viewControllerDidSignOut(_ controller: UIViewController) {
        delegate?.coordinatorDidSignOut(self)
    }
    
}
