//
//  PizzaFactory.swift
//  FactoryPatternSwift
//
//  Created by Reagan Wood on 6/12/18.
//  Copyright © 2018 RW Software. All rights reserved.
//

import Foundation

class PizzaFactory {
    
    init() {}
    
    public func createPizza (pizzaType: String) -> Pizza {
        switch (pizzaType) {
        case "pepperoni":
            return PepporoniPizza()
        case "cheese":
            return CheesePizza()
        case "baconpepperoni":
            return PeppoeroniBaconPizza()
        case "bacon":
            return BaconPizza()
        case "pinneaple":
            return PinneaplePizza()
        default:
            return PepporoniPizza()
        }
    }
}
