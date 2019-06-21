//
//  AboutViewControllerDelegate.swift
//  LearningCoordinators
//
//  Created by Brian Sipple on 6/20/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import UIKit


protocol AboutViewControllerDelegate: class {
    func viewController(_ controller: UIViewController, didSelect detailNumber: Int)
}
