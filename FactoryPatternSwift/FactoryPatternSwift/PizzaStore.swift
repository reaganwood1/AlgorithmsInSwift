//
//  PizzaStore.swift
//  FactoryPatternSwift
//
//  Created by Reagan Wood on 6/12/18.
//  Copyright © 2018 RW Software. All rights reserved.
//

import Foundation

class PizzaStore {
    private var pizzaKitchen: PizzaFactory
    
    init(pizzaKitchen: PizzaFactory) {
        self.pizzaKitchen = pizzaKitchen
    }
    
    public func pizzaOrderReceived (pizzaOrder: String) -> Pizza {
        return pizzaKitchen.createPizza(pizzaType: pizzaOrder)
    }
}
