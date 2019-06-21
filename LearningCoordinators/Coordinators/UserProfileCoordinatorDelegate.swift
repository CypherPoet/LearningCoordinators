//
//  UserProfileCoordinatorDelegate.swift
//  LearningCoordinators
//
//  Created by Brian Sipple on 6/19/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import UIKit

protocol UserProfileCoordinatorDelegate: class {
    func coordinatorDidSignOut(_ coordinator: Coordinator)
}
