//
//  HouseBlend.swift
//  DecoratorPatternPractice
//
//  Created by Reagan Wood on 6/10/18.
//  Copyright © 2018 RW Software. All rights reserved.
//

import Foundation

class HouseBlend: BeverageProtocol {
    
    var description: String = "A mild one"
    var cost: Double = 3.50
    
    init() {}
    
    func getCost() -> Double {
        return cost
    }
    
    func getDescription() -> String {
        return description
    }
}
