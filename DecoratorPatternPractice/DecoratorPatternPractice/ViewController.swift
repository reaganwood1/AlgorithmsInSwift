//
//  ViewController.swift
//  DecoratorPatternPractice
//
//  Created by Reagan Wood on 6/10/18.
//  Copyright © 2018 RW Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        constructBeverages()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func constructBeverages () {
        let decaf = Decaf()
        let houseBlend = HouseBlend()
        let espresso = Espresso()
        let mocha = Mocha(beverage: decaf)
        let mochaHouse = Mocha(beverage: houseBlend)
        let mochaDecaf = Mocha(beverage: decaf)
        
        print(decaf.getDescription())
        print(decaf.getCost())
        
        print(houseBlend.getDescription())
        print(houseBlend.getCost())
        
        print(espresso.getDescription())
        print(espresso.getCost())
        
        print(mocha.getDescription())
        print(mocha.getCost())
        
        print(mochaHouse.getDescription())
        print(mochaHouse.getCost())
        
        print(mochaDecaf.getDescription())
        print(mochaDecaf.getCost())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

