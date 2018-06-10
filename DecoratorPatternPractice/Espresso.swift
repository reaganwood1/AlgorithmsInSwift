//
//  Espresso.swift
//  DecoratorPatternPractice
//
//  Created by Reagan Wood on 6/10/18.
//  Copyright © 2018 RW Software. All rights reserved.
//

import Foundation

class Espresso: BeverageProtocol {
    var description: String = "A light drink"
    
    var cost: Double = 2.99
    
    init() {}
    
    func getCost() -> Double {
        return cost
    }
    
    func getDescription() -> String {
        return description
    }
}
