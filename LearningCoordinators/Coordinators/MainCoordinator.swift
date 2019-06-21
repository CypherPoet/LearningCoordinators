//
//  MainCoordinator.swift
//  LearningCoordinators
//
//  Created by Brian Sipple on 6/19/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import UIKit

final class MainCoordinator: NSObject, Coordinator {
    private let tabBarController: MainTabBarController
    private let userProfileCoordinator: UserProfileCoordinator
    private let aboutCoordinator: AboutCoordinator

    weak var delegate: MainCoordinatorDelegate?
    var rootViewController: UIViewController { tabBarController }

    
    override init() {
        self.tabBarController = MainTabBarController.instantiateFromStoryboard()
        self.userProfileCoordinator = UserProfileCoordinator()
        self.aboutCoordinator = AboutCoordinator()
        
        super.init()
    
        userProfileCoordinator.delegate = self
    }
    

    func start() {
        let childCoordinators: [Coordinator] = [userProfileCoordinator, aboutCoordinator]
        
        tabBarController.setViewControllers(
            childCoordinators.map { $0.rootViewController },
            animated: true
        )
    }
}


// MARK: - UserProfileCoordinatorDelegate
extension MainCoordinator: UserProfileCoordinatorDelegate {

    func coordinatorDidSignOut(_ coordinator: Coordinator) {
        delegate?.coordinatorDidSignOut(self)
    }
}

