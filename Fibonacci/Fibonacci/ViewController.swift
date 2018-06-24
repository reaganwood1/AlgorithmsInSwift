//
//  ViewController.swift
//  Fibonacci
//
//  Created by Reagan Wood on 6/24/18.
//  Copyright © 2018 RW Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let fibFunction : (_ param: Int) -> Int = { return $0 + 2 }
        print(fib(number: 3, fibFunction: fibFunction))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func fib (number: Int, fibFunction: (_ param: Int) -> Int) -> Int {
        if number == 0 {
            return 0
        }
        return fibFunction(number) + fib(number: number - 1, fibFunction: fibFunction)
    }
}

