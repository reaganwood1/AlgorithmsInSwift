//
//  Decaf.swift
//  DecoratorPatternPractice
//
//  Created by Reagan Wood on 6/10/18.
//  Copyright © 2018 RW Software. All rights reserved.
//

import Foundation

class Decaf: BeverageProtocol {
    var description: String = "No caffeine"
    var cost: Double = 1.50
    
    init() {}
    
    func getCost() -> Double {
        return cost
    }
    
    func getDescription() -> String {
        return description
    }
}
