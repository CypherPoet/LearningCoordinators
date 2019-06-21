//
//  MainTabBarControllerDelegate.swift
//  LearningCoordinators
//
//  Created by Brian Sipple on 6/18/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import UIKit


protocol MainTabBarControllerDelegate: class {
    func controllerDidSelectUserProfileTab(_ controller: UITabBarController)
    func controllerDidSelectAboutTab(_ controller: UITabBarController)
}
