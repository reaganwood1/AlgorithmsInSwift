//
//  Pizza.swift
//  FactoryPatternSwift
//
//  Created by Reagan Wood on 6/12/18.
//  Copyright © 2018 RW Software. All rights reserved.
//

import Foundation

protocol Pizza {
    var toppings: [String] {get}
}

class PepporoniPizza : Pizza {
    var toppings: [String] = ["Pepperoni", "Cheese"]
    
    init() {}
}

class CheesePizza : Pizza {
    var toppings: [String] = ["Cheese"]
    
    init() {}
}

class BaconPizza : Pizza {
    var toppings: [String] = ["Bacon", "Cheese"]
    
    init() {}
}

class PeppoeroniBaconPizza : Pizza {
    var toppings: [String] = ["Pepperoni", "Bacon", "Cheese"]
    
    init() {}
}

class PinneaplePizza : Pizza {
    var toppings: [String] = ["Pinneaple", "Cheese"]
    
    init() {}
}
