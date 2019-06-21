//
//  AboutCoordinator.swift
//  LearningCoordinators
//
//  Created by Brian Sipple on 6/19/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import UIKit

final class AboutCoordinator: NavigationCoordinator {
    var navController: UINavigationController
    

    init(navController: UINavigationController = UINavigationController()) {
        self.navController = navController

        // Initialize the view controller and provide it with any dependencies that it might need
        let aboutViewController = AboutViewController.instantiateFromStoryboard()
        
        aboutViewController.title = "About"
        aboutViewController.delegate = self
        navController.setViewControllers([aboutViewController], animated: true)
    }

    // ❓ Given the unique nature of how this coordinator is created when we set up the
    // main tab bar coordinator, it seems like `init` needs to be a replacement for `start`.
    func start() {}
}


extension AboutCoordinator: AboutViewControllerDelegate {
    
    func viewController(_ controller: UIViewController, didSelect detailNumber: Int) {
        let detailViewController = AboutDetailViewController.instantiateFromStoryboard()
        
        switch detailNumber {
        case 1:
            detailViewController.aboutDescription = "Coordinators R Awesome!"
        case 2:
            detailViewController.aboutDescription = """
            Normally, this kind of passed data could be derived by some kind of data source
            or model controller logic.
            """
        default:
            fatalError("Unexpected number")
        }
        
        navController.pushViewController(detailViewController, animated: true)
    }
    
    
}
