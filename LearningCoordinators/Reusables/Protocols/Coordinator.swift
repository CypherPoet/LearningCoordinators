//
//  Coordinator.swift
//  LearningCoordinators
//
//  Created by Brian Sipple on 6/18/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import UIKit

protocol Coordinator: class {
    var rootViewController: UIViewController { get }
    
    func start()
}
