//
//  NavigationCoordinator.swift
//  LearningCoordinators
//
//  Created by Brian Sipple on 6/21/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import UIKit


protocol NavigationCoordinator: Coordinator, NavigationControlling {}


extension NavigationCoordinator {
    var rootViewController: UIViewController { navController }
}
