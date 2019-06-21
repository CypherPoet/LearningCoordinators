//
//  Storyboarded.swift
//  LearningCoordinators
//
//  Created by Brian Sipple on 6/18/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import UIKit

protocol Storyboarded {
    static var storyboardName: String { get }
    static var storyboardID: String { get }
    static func instantiateFromStoryboard() -> Self
}


extension Storyboarded where Self: UIViewController {
    static var storyboardName: String {
        return "Main"
    }
    
    static var storyboardID: String {
        let fullClassName = NSStringFromClass(self)
        
        guard let className = fullClassName.components(separatedBy: ".").last else {
            preconditionFailure("Failed to find class name for default storyboard ID.")
        }
        
        return className
    }
    
    
    /// Finds the class name of the conforming view controller and uses that
    /// to find a storyboard identifier inside the Main storyboard.
    static func instantiateFromStoryboard() -> Self {
        let storyboard = UIStoryboard(name: Self.storyboardName, bundle: .main)
        
        return storyboard.instantiateViewController(withIdentifier: Self.storyboardID) as! Self
    }
}
