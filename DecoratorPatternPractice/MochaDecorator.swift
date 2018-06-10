//
//  MochaDecorator.swift
//  DecoratorPatternPractice
//
//  Created by Reagan Wood on 6/10/18.
//  Copyright © 2018 RW Software. All rights reserved.
//

import Foundation

class Mocha: BeverageProtocol {
    var description: String
    var cost: Double = 0.25
    private var beverage: BeverageProtocol
    
    init (beverage: BeverageProtocol) {
        self.cost = 0.50
        self.description = "Mocha flavoring"
        self.beverage = beverage
    }
    
    func getCost() -> Double {
        return beverage.getCost() + cost
    }
    
    func getDescription() -> String {
        return beverage.getDescription() + description
    }
}
