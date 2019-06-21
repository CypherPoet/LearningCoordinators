//
//  CreateAccountCoordinator.swift
//  LearningCoordinators
//
//  Created by Brian Sipple on 6/18/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import Foundation

protocol AuthCoordinatorDelegate: class {
    func coordinatorDidAuthenticate(_ coordinator: AuthCoordinator)
}
