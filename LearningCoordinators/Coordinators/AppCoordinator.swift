//
//  AppCoordinator.swift
//  LearningCoordinators
//
//  Created by Brian Sipple on 6/18/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import UIKit

final class AppCoordinator: NSObject, NavigationCoordinator {
    var navController: UINavigationController
    private var window: UIWindow
    
    private var authCoordinator: AuthCoordinator?
    private var mainCoordinator: MainCoordinator?
    

    init(
        navController: UINavigationController = UINavigationController(),
        window: UIWindow
    ) {
        self.navController = navController
        self.window = window
        
        super.init()
    }
    
    
    func start() {
        window.makeKeyAndVisible()
        window.rootViewController = navController
        
        showAuth()
    }
}

// MARK: - Navigation
private extension AppCoordinator {
 
    func showMain() {
        authCoordinator = nil
        navController.isNavigationBarHidden = true

        mainCoordinator = MainCoordinator()

        navController.setViewControllers([mainCoordinator!.rootViewController], animated: true)
        mainCoordinator?.delegate = self
        mainCoordinator?.start()
    }
    
    
    func showAuth() {
        mainCoordinator = nil
        navController.isNavigationBarHidden = false
        authCoordinator = AuthCoordinator(navController: navController)

        authCoordinator?.delegate = self
        authCoordinator?.start()
    }
}

// MARK: - AuthCoordinatorDelegate
extension AppCoordinator: AuthCoordinatorDelegate {
    
    func coordinatorDidAuthenticate(_ coordinator: AuthCoordinator) {
        showMain()
    }
}

// MARK: - MainCoordinatorDelegate
extension AppCoordinator: MainCoordinatorDelegate {
    
    func coordinatorDidSignOut(_ coordinator: Coordinator) {
        showAuth()
    }
}
